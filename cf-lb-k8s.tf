resource "cloudflare_record" "k8s_master_lb_ipv4" {
  zone_id         = local.current_cf_zone_id
  name            = "k8s"
  value           = hcloud_load_balancer.k8s_master_lb.ipv4
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "k8s_master_lb_ipv6" {
  zone_id         = local.current_cf_zone_id
  name            = "k8s"
  value           = hcloud_load_balancer.k8s_master_lb.ipv6
  type            = "AAAA"
  proxied         = false
  allow_overwrite = true
}


resource "cloudflare_record" "k8s_worker_lb_ipv4" {
  zone_id         = local.current_cf_zone_id
  name            = "worker"
  value           = hcloud_load_balancer.k8s_worker_lb.ipv4
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "k8s_worker_lb_ipv6" {
  zone_id         = local.current_cf_zone_id
  name            = "worker"
  value           = hcloud_load_balancer.k8s_worker_lb.ipv6
  type            = "AAAA"
  proxied         = false
  allow_overwrite = true
}
