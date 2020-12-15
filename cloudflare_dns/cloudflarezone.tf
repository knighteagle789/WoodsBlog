resource "cloudflare_zone_settings_override" "com-settings" {
  zone_id = data.cloudflare_zones.zone.zones[0].id
  settings {
    tls_1_3                  = "on"
    automatic_https_rewrites = "on"
    ssl                      = "strict"
    #waf                      = "on"
  }
}
