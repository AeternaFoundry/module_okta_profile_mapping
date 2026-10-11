resource "okta_profile_mapping" "profile_mappings" {
  for_each = var.profile_mappings

  source_id          = each.value.source_id
  target_id          = each.value.target_id
  always_apply       = each.value.always_apply
  delete_when_absent = each.value.delete_when_absent

  dynamic "mappings" {
    for_each = each.value.mappings != null ? each.value.mappings : []
    content {
      expression  = mappings.value.expression
      id          = mappings.value.id
      push_status = mappings.value.push_status
    }
  }
}

