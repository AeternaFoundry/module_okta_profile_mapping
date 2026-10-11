variable "profile_mappings" {
  description = <<EOT
Map of profile_mappings, attributes below
Required:
    - source_id
    - target_id
Optional:
    - always_apply
    - delete_when_absent
    - mappings (block):
        - expression (required)
        - id (required)
        - push_status (optional)
EOT

  type = map(object({
    source_id          = string
    target_id          = string
    always_apply       = optional(bool)
    delete_when_absent = optional(bool)
    mappings = optional(list(object({
      expression  = string
      id          = string
      push_status = optional(string)
    })))
  }))
}

