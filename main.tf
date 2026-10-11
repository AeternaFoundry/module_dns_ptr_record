resource "dns_ptr_record" "ptr_records" {
  for_each = var.ptr_records

  ptr  = each.value.ptr
  zone = each.value.zone
  name = each.value.name
  ttl  = each.value.ttl
}

