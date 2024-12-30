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