output "zone_holds_id" {
  description = "Map of id values across all zone_holds, keyed the same as var.zone_holds except keys with no id are omitted"
  value       = { for k, v in cloudflare_zone_hold.zone_holds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "zone_holds_hold" {
  description = "Map of hold values across all zone_holds, keyed the same as var.zone_holds except keys with no hold are omitted"
  value       = { for k, v in cloudflare_zone_hold.zone_holds : k => v.hold if v.hold != null }
}
output "zone_holds_hold_after" {
  description = "Map of hold_after values across all zone_holds, keyed the same as var.zone_holds except keys with no hold_after are omitted"
  value       = { for k, v in cloudflare_zone_hold.zone_holds : k => v.hold_after if v.hold_after != null && length(v.hold_after) > 0 }
}
output "zone_holds_include_subdomains" {
  description = "Map of include_subdomains values across all zone_holds, keyed the same as var.zone_holds except keys with no include_subdomains are omitted"
  value       = { for k, v in cloudflare_zone_hold.zone_holds : k => v.include_subdomains if v.include_subdomains != null }
}
output "zone_holds_zone_id" {
  description = "Map of zone_id values across all zone_holds, keyed the same as var.zone_holds except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_zone_hold.zone_holds : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

