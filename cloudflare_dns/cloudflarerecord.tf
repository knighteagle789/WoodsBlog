resource "cloudflare_record" "record" {
  for_each = var.dnsentries
  zone_id  = data.cloudflare_zones.zone.zones[0].id
  name     = each.value.dnsname
  value    = each.value.dnsvalue
  type     = each.value.dnstype
  proxied  = true
}
