data "cloudflare_record" "test" {
  zone_id  = var.zone
  hostname = "test.blocknode.run"
}

data "cloudflare_zone" "test_zone" { 
    name = "blocknode.run"
}

data "cloudflare_zones" "test_zones" {
  filter {
    name = "blocknode.run"
  }
}