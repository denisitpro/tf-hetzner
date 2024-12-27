# # resource "cloudflare_record" "k8s_master_ipv4" {
# #   zone_id         = local.current_cf_zone_id
# #   count           = length(hcloud_server.k8s_master)
# #   name            = hcloud_server.k8s_master[count.index].name
# #   content         = hcloud_server.k8s_master[count.index].ipv4_address
# #   type            = "A"
# #   ttl             = 300
# #   proxied         = false
# #   allow_overwrite = true
# # }
#
# resource "cloudflare_record" "k8s_master_local_ipv4" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.k8s_master)
#   name            = "k8s-local-${format("%02d", count.index + 1)}"
#   content         = (tolist([for net in hcloud_server.k8s_master[count.index].network : net.ip]))[0]
#   type            = "A"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
#
# resource "cloudflare_record" "k8s_master_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.k8s_master)
#   name            = hcloud_server.k8s_master[count.index].name
#   content         = hcloud_server.k8s_master[count.index].ipv6_address
#   type            = "AAAA"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
# #
# # resource "cloudflare_record" "k8s_worker_ipv4" {
# #   zone_id         = local.current_cf_zone_id
# #   count           = length(hcloud_server.k8s_worker)
# #   name            = hcloud_server.k8s_worker[count.index].name
# #   content         = hcloud_server.k8s_worker[count.index].ipv4_address
# #   type            = "A"
# #   ttl             = 300
# #   proxied         = false
# #   allow_overwrite = true
# # }
# #
# # resource "cloudflare_record" "k8s_worker_ipv6" {
# #   zone_id         = local.current_cf_zone_id
# #   count           = length(hcloud_server.k8s_worker)
# #   name            = hcloud_server.k8s_worker[count.index].name
# #   content         = hcloud_server.k8s_worker[count.index].ipv6_address
# #   type            = "AAAA"
# #   ttl             = 300
# #   proxied         = false
# #   allow_overwrite = true
# # }
#
# resource "cloudflare_record" "haproxy_lb_ipv4" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.haproxy_lb)
#   name            = hcloud_server.haproxy_lb[count.index].name
#   content         = hcloud_server.haproxy_lb[count.index].ipv4_address
#   type            = "A"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
#
# resource "cloudflare_record" "haproxy_lb_local_ipv4" {
#   zone_id = local.current_cf_zone_id
#   count   = length(hcloud_server.haproxy_lb)
#   name    = "k8s-lb-local-${format("%02d", count.index + 1)}"
#   #   content         = hcloud_server.haproxy_lb[count.index].ipv4_address
#   content         = (tolist([for net in hcloud_server.haproxy_lb[count.index].network : net.ip]))[0]
#   type            = "A"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
#
# resource "cloudflare_record" "haproxy_lb_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.haproxy_lb)
#   name            = hcloud_server.haproxy_lb[count.index].name
#   content         = hcloud_server.haproxy_lb[count.index].ipv6_address
#   type            = "AAAA"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
#
#
# resource "cloudflare_record" "teleport_full_ipv4" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.teleport)
#   name            = hcloud_server.teleport[count.index].name
#   content         = hcloud_server.teleport[count.index].ipv4_address
#   type            = "A"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }
#
#
# resource "cloudflare_record" "teleport_full_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.teleport)
#   name            = hcloud_server.teleport[count.index].name
#   content         = hcloud_server.teleport[count.index].ipv6_address
#   type            = "AAAA"
#   ttl             = 300
#   proxied         = false
#   allow_overwrite = true
# }


resource "cloudflare_record" "build_full_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.build_srv)
  name            = hcloud_server.build_srv[count.index].name
  content         = hcloud_server.build_srv[count.index].ipv4_address
  type            = "A"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}


resource "cloudflare_record" "build_full_ipv6" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.build_srv)
  name            = hcloud_server.build_srv[count.index].name
  content         = hcloud_server.build_srv[count.index].ipv6_address
  type            = "AAAA"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}
