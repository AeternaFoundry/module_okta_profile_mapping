output "profile_mappings_id" {
  description = "Map of id values across all profile_mappings, keyed the same as var.profile_mappings except keys with no id are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "profile_mappings_always_apply" {
  description = "Map of always_apply values across all profile_mappings, keyed the same as var.profile_mappings except keys with no always_apply are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.always_apply if v.always_apply != null }
}
output "profile_mappings_delete_when_absent" {
  description = "Map of delete_when_absent values across all profile_mappings, keyed the same as var.profile_mappings except keys with no delete_when_absent are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.delete_when_absent if v.delete_when_absent != null }
}
output "profile_mappings_mappings" {
  description = "Map of mappings values across all profile_mappings, keyed the same as var.profile_mappings except keys with no mappings are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.mappings if v.mappings != null && length(v.mappings) > 0 }
}
output "profile_mappings_source_id" {
  description = "Map of source_id values across all profile_mappings, keyed the same as var.profile_mappings except keys with no source_id are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.source_id if v.source_id != null && length(v.source_id) > 0 }
}
output "profile_mappings_source_name" {
  description = "Map of source_name values across all profile_mappings, keyed the same as var.profile_mappings except keys with no source_name are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.source_name if v.source_name != null && length(v.source_name) > 0 }
}
output "profile_mappings_source_type" {
  description = "Map of source_type values across all profile_mappings, keyed the same as var.profile_mappings except keys with no source_type are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.source_type if v.source_type != null && length(v.source_type) > 0 }
}
output "profile_mappings_target_id" {
  description = "Map of target_id values across all profile_mappings, keyed the same as var.profile_mappings except keys with no target_id are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.target_id if v.target_id != null && length(v.target_id) > 0 }
}
output "profile_mappings_target_name" {
  description = "Map of target_name values across all profile_mappings, keyed the same as var.profile_mappings except keys with no target_name are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.target_name if v.target_name != null && length(v.target_name) > 0 }
}
output "profile_mappings_target_type" {
  description = "Map of target_type values across all profile_mappings, keyed the same as var.profile_mappings except keys with no target_type are omitted"
  value       = { for k, v in okta_profile_mapping.profile_mappings : k => v.target_type if v.target_type != null && length(v.target_type) > 0 }
}

