output "test" { 
    value = data.cloudflare_record.test
}

output "zone" { 
    value = data.cloudflare_zone.test_zone
}

output "zones" { 
    value = data.cloudflare_zones.test_zones
}