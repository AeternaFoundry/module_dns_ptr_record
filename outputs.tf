output "ptr_records_id" {
  description = "Map of id values across all ptr_records, keyed the same as var.ptr_records except keys with no id are omitted"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ptr_records_name" {
  description = "Map of name values across all ptr_records, keyed the same as var.ptr_records except keys with no name are omitted"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ptr_records_ptr" {
  description = "Map of ptr values across all ptr_records, keyed the same as var.ptr_records except keys with no ptr are omitted"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.ptr if v.ptr != null && length(v.ptr) > 0 }
}
output "ptr_records_ttl" {
  description = "Map of ttl values across all ptr_records, keyed the same as var.ptr_records except keys with no ttl are omitted"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.ttl if v.ttl != null }
}
output "ptr_records_zone" {
  description = "Map of zone values across all ptr_records, keyed the same as var.ptr_records except keys with no zone are omitted"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

