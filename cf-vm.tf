resource "cloudflare_dns_record" "vm_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.vm_srv)
  name    = hcloud_server.vm_srv[count.index].name
  content = hcloud_server.vm_srv[count.index].ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false
}

resource "cloudflare_dns_record" "vm_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.vm_srv)
  name    = hcloud_server.vm_srv[count.index].name
  content = hcloud_server.vm_srv[count.index].ipv6_address
  type    = "AAAA"
  ttl     = 300
  proxied = false
}
