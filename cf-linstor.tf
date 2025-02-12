resource "cloudflare_dns_record" "linstor_controller_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.linstor_controller)
  name    = hcloud_server.linstor_controller[count.index].name
  content = hcloud_server.linstor_controller[count.index].ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "linstor_controller_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.linstor_controller)
  name    = hcloud_server.linstor_controller[count.index].name
  content = hcloud_server.linstor_controller[count.index].ipv6_address
  type    = "AAAA"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "linstor_sattelites_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.linstor_sattelites)
  name    = hcloud_server.linstor_sattelites[count.index].name
  content = hcloud_server.linstor_sattelites[count.index].ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "linstor_sattelites_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.linstor_sattelites)
  name    = hcloud_server.linstor_sattelites[count.index].name
  content = hcloud_server.linstor_sattelites[count.index].ipv6_address
  type    = "AAAA"
  ttl     = 300
  proxied = false
}
