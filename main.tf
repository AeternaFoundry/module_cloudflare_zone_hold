resource "cloudflare_zone_hold" "zone_holds" {
  for_each = var.zone_holds

  zone_id            = each.value.zone_id
  hold_after         = each.value.hold_after
  include_subdomains = each.value.include_subdomains
}

