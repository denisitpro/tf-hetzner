resource "cloudflare_record" "k8s_master_lb_ipv4" {
  zone_id         = local.current_cf_zone_id
  name            = "k8s"
  content         = hcloud_load_balancer.k8s_master_lb.ipv4
  type            = "A"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "k8s_master_lb_ipv6" {
  zone_id         = local.current_cf_zone_id
  name            = "k8s"
  content         = hcloud_load_balancer.k8s_master_lb.ipv6
  type            = "AAAA"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}


# resource "cloudflare_record" "k8s_worker_lb_ipv4" {
#   zone_id         = local.current_cf_zone_id
#   name            = "worker"
#   value           = hcloud_load_balancer.k8s_worker_lb_v2.ipv4
#   type            = "A"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
#
# resource "cloudflare_record" "k8s_worker_lb_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   name            = "worker"
#   value           = hcloud_load_balancer.k8s_worker_lb_v2.ipv6
#   type            = "AAAA"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
