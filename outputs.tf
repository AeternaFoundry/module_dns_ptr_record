output "ptr_records_id" {
  description = "Map of id values across all ptr_records, keyed the same as var.ptr_records"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.id }
}
output "ptr_records_name" {
  description = "Map of name values across all ptr_records, keyed the same as var.ptr_records"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.name }
}
output "ptr_records_ptr" {
  description = "Map of ptr values across all ptr_records, keyed the same as var.ptr_records"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.ptr }
}
output "ptr_records_ttl" {
  description = "Map of ttl values across all ptr_records, keyed the same as var.ptr_records"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.ttl }
}
output "ptr_records_zone" {
  description = "Map of zone values across all ptr_records, keyed the same as var.ptr_records"
  value       = { for k, v in dns_ptr_record.ptr_records : k => v.zone }
}

