terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }
}
provider "cloudflare" {
  api_token = file(var.key)
}


module "add_record" { 
    source = "./modules/add_dns_record"

    key = "./cf_key.txt"

    domain = "blocknode.run"
    domain_name = "modstest"
    domain_ip = "1.1.1.1"
    domain_type = "A"
}