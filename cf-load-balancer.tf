resource "cloudflare_record" "k8s_balancer_ipv4" {
  zone_id         = local.current_cf_zone_id
  name            = "k8s"
  value           = hcloud_load_balancer.k8s_balancer.ipv4
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "k8s_balancer_ipv6" {
  zone_id         = local.current_cf_zone_id
  name            = "k8s"
  value           = hcloud_load_balancer.k8s_balancer.ipv6
  type            = "AAAA"
  proxied         = false
  allow_overwrite = true
}

