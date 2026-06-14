#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)
repo_root=$(CDPATH= cd -- "$script_dir/.." && pwd -P)

exec </dev/null

if ! command -v ruby >/dev/null 2>&1; then
  printf '%s\n' "validate-audits.sh: ruby is required to parse YAML audit files" >&2
  exit 127
fi

exec ruby -e '
require "yaml"

repo_root = ARGV.fetch(0)
schema_path = File.join(repo_root, "audits/category-ledger-schema.yaml")
registry_path = File.join(repo_root, "audits/category-registry.yaml")

schema = YAML.load_file(schema_path)
registry = YAML.load_file(registry_path)
errors = []

category_shape = schema.fetch("category_record")
required_keys = Array(category_shape.fetch("required"))
optional_keys = Array(category_shape.fetch("optional"))
allowed_keys = (required_keys + optional_keys).uniq

categories = registry.fetch("categories")
unless categories.is_a?(Array) && !categories.empty?
  errors << "category-registry.yaml must define a non-empty categories array"
  categories = []
end

severity_allowlist = %w[low medium high critical]
registry_ids = []

categories.each_with_index do |category, index|
  label = "categories[#{index}]"

  unless category.is_a?(Hash)
    errors << "#{label} must be a mapping"
    next
  end

  missing_keys = required_keys.reject { |key| category.key?(key) }
  missing_keys.each do |key|
    errors << "#{label} is missing required key #{key}"
  end

  unexpected_keys = category.keys - allowed_keys
  unexpected_keys.each do |key|
    errors << "#{label} has unexpected key #{key}"
  end

  id = category["id"]
  if id.is_a?(String) && !id.empty?
    registry_ids << id
  else
    errors << "#{label} must have a non-empty string id"
  end

  %w[title fix_strategy default_severity].each do |key|
    value = category[key]
    next if value.is_a?(String) && !value.strip.empty?
    errors << "#{label} #{key} must be a non-empty string"
  end

  severity = category["default_severity"]
  if severity.is_a?(String) && !severity_allowlist.include?(severity)
    errors << "#{label} default_severity must be one of #{severity_allowlist.join(", ")}"
  end

  policy_ids = category["policy_ids"]
  if !policy_ids.is_a?(Array) || policy_ids.empty?
    errors << "#{label} policy_ids must be a non-empty array"
  else
    policy_ids.each_with_index do |policy_id, policy_index|
      unless policy_id.is_a?(String) && !policy_id.strip.empty?
        errors << "#{label} policy_ids[#{policy_index}] must be a non-empty string"
      end
    end
  end

  if category.key?("policy_axes")
    policy_axes = category["policy_axes"]
    if !policy_axes.is_a?(Array) || policy_axes.empty?
      errors << "#{label} policy_axes must be a non-empty array when present"
    else
      policy_axes.each_with_index do |policy_axis, axis_index|
        unless policy_axis.is_a?(String) && !policy_axis.strip.empty?
          errors << "#{label} policy_axes[#{axis_index}] must be a non-empty string"
        end
      end
    end
  end
end

duplicate_ids = registry_ids.group_by { |id| id }.select { |_id, ids| ids.length > 1 }.keys
duplicate_ids.each do |id|
  errors << "duplicate category id #{id}"
end

seed_ids = schema.fetch("category_seed_ids").values.flatten
missing_from_registry = seed_ids - registry_ids
extra_in_registry = registry_ids - seed_ids

missing_from_registry.each do |id|
  errors << "schema seed id #{id} is missing from category-registry.yaml"
end

extra_in_registry.each do |id|
  errors << "category-registry.yaml id #{id} is not declared in category-ledger-schema.yaml"
end

if errors.empty?
  puts "audit registry validation passed"
  exit 0
end

warn "audit registry validation failed:"
errors.each do |error|
  warn "- #{error}"
end
exit 1
' "$repo_root"
