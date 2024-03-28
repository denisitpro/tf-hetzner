resource "cloudflare_record" "k8s_master_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.k8s_master)
  name            = hcloud_server.k8s_master[count.index].name
  value           = hcloud_server.k8s_master[count.index].ipv4_address
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "k8s_master_ipv6" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.k8s_master)
  name            = hcloud_server.k8s_master[count.index].name
  value           = hcloud_server.k8s_master[count.index].ipv6_address
  type            = "AAAA"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "k8s_worker_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.k8s_worker)
  name            = hcloud_server.k8s_worker[count.index].name
  value           = hcloud_server.k8s_worker[count.index].ipv4_address
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "k8s_worker_ipv6" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.k8s_worker)
  name            = hcloud_server.k8s_worker[count.index].name
  value           = hcloud_server.k8s_worker[count.index].ipv6_address
  type            = "AAAA"
  proxied         = false
  allow_overwrite = true
}

#
#resource "cloudflare_record" "hat_ipv4" {
#  zone_id         = local.current_cf_zone_id
#  count           = length(hcloud_server.hat_app_v1)
#  name            = hcloud_server.hat_app_v1[count.index].name
#  value           = hcloud_server.hat_app_v1[count.index].ipv4_address
#  type            = "A"
#  proxied         = false
#  allow_overwrite = true
#}
#
#resource "cloudflare_record" "hat_ipv6" {
#  zone_id         = local.current_cf_zone_id
#  count           = length(hcloud_server.hat_app_v1)
#  name            = hcloud_server.hat_app_v1[count.index].name
#  value           = hcloud_server.hat_app_v1[count.index].ipv6_address
#  type            = "AAAA"
#  proxied         = false
#  allow_overwrite = true
#}
