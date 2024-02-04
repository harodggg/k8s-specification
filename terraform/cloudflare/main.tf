terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}

provider "cloudflare" {
  api_token = file("./cf_key.txt")
}

resource "cloudflare_record" "test" {
  zone_id = var.zone
  name    = "test"
  value   = "203.0.113.10"
  type    = "A"
  proxied = false
}