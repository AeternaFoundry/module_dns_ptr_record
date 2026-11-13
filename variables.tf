variable "ptr_records" {
  description = <<EOT
Map of ptr_records, attributes below
Required:
    - ptr
    - zone
Optional:
    - name
    - ttl
EOT

  type = map(object({
    ptr  = string
    zone = string
    name = optional(string)
    ttl  = optional(number)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

