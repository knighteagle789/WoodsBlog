data "cloudflare_zones" "zone" {
  filter {
    name = var.domain
  }
}
