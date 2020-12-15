resource "cloudflare_zone_settings_override" "com-settings" {
  zone_id = data.cloudflare_zones.zone.zones[0].id
  settings {
    tls_1_3                  = "on"
    automatic_https_rewrites = "off"
    ssl                      = "full"
    #waf                      = "on"
  }
}

# resource "cloudflare_rate_limit" "login-limit" {
#   zone_id = data.cloudflare_zones.zone.zones[0].id

#   threshold = 5
#   period    = 60
#   match {
#     request {
#       url_pattern = "org.${var.domain}/"
#       schemes     = ["HTTP", "HTTPS"]
#       methods     = ["POST"]
#     }
#     response {
#       statuses       = [401, 403]
#       origin_traffic = true
#     }
#   }
#   action {
#     mode    = "simulate"
#     timeout = 300
#     response {
#       content_type = "text/plain"
#       body         = "You have failed to login 5 times in a 60 second period and will be blocked from attempting to login again for the next 5 minutes."
#     }
#   }
#   disabled    = false
#   description = "Block failed login attempts (5 in 1 minute) for 5 minutes."
# }
