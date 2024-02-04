terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}
resource "cloudflare_record" "domain_record" {
  zone_id = data.cloudflare_zone.zone.id
  name    = var.domain_name
  value   = var.domain_ip
  type    = var.domain_type
  proxied = var.domain_proxy
}