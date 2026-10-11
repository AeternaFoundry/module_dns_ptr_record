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
}

