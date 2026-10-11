variable "zone_holds" {
  description = <<EOT
Map of zone_holds, attributes below
Required:
    - zone_id
Optional:
    - hold_after
    - include_subdomains
EOT

  type = map(object({
    zone_id            = string
    hold_after         = optional(string)
    include_subdomains = optional(bool)
  }))
}

