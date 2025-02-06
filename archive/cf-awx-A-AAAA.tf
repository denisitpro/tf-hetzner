resource "cloudflare_dns_record" "awx_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.awx)
  name    = hcloud_server.awx[count.index].name
  content = hcloud_server.awx[count.index].ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false

}

resource "cloudflare_dns_record" "awx_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.awx)
  name    = hcloud_server.awx[count.index].name
  content = hcloud_server.awx[count.index].ipv6_address
  type    = "AAAA"
  ttl     = 300
  proxied = false

}
