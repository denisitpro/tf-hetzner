resource "cloudflare_record" "k8s_master_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.k8s_master)
  name    = hcloud_server.k8s_master[count.index].name
  value   = hcloud_server.k8s_master[count.index].ipv4_address
  type    = "A"
  proxied = false
}

resource "cloudflare_record" "k8s_master_ipv6" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.k8s_master)
  name    = hcloud_server.k8s_master[count.index].name
  value   = hcloud_server.k8s_master[count.index].ipv6_address
  type    = "AAAA"
  proxied = false
}

