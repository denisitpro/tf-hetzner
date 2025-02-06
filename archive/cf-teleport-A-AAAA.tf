resource "cloudflare_dns_record" "teleport_full_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.teleport)
  name    = hcloud_server.teleport[count.index].name
  content = hcloud_server.teleport[count.index].ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false

}


resource "cloudflare_dns_record" "teleport_full_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.teleport)
  name    = hcloud_server.teleport[count.index].name
  content = hcloud_server.teleport[count.index].ipv6_address
  type    = "AAAA"
  ttl     = 300
  proxied = false

}

resource "cloudflare_dns_record" "teleport_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.teleport)
  name    = "tp"
  content = hcloud_server.teleport[count.index].ipv4_address
  type    = "A"
  proxied = false

}

resource "cloudflare_dns_record" "teleport_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.teleport)
  name    = "tp"
  content = hcloud_server.teleport[count.index].ipv6_address
  type    = "AAAA"
  proxied = false

}


resource "cloudflare_dns_record" "teleport_wild_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.teleport)
  name    = "*.tp"
  content = hcloud_server.teleport[count.index].ipv4_address
  type    = "A"
  proxied = false

}

resource "cloudflare_dns_record" "teleport_wild_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.teleport)
  name    = "*.tp"
  content = hcloud_server.teleport[count.index].ipv6_address
  type    = "AAAA"
  proxied = false

}




