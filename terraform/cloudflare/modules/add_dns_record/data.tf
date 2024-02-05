data "cloudflare_zone" "zone" { 
    name =  var.domain
}

 data "cloudflare_record" "domain_record" {
    zone_id  = data.cloudflare_zone.zone.id
    hostname = "${var.domain_name}.${var.domain}"
    depends_on = [
    # Security group rule must be created before this IP address could
    # actually be used, otherwise the services will be unreachable.
    resource.cloudflare_record.domain_record,
  ]
}