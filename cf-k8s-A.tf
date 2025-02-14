# resource "cloudflare_dns_record" "k8s_master_ipv4" {
#   zone_id = local.current_cf_zone_id
#   count   = length(hcloud_server.k8s_master)
#   name    = hcloud_server.k8s_master[count.index].name
#   content = hcloud_server.k8s_master[count.index].ipv4_address
#   type    = "A"
#   ttl     = 300
#   proxied = false
# }

# resource "cloudflare_dns_record" "k8s_master_ipv6" {
#   zone_id = local.current_cf_zone_id
#   count   = length(hcloud_server.k8s_master)
#   name    = hcloud_server.k8s_master[count.index].name
#   content = hcloud_server.k8s_master[count.index].ipv6_address
#   type    = "AAAA"
#   ttl     = 300
#   proxied = false
# }

# resource "cloudflare_dns_record" "k8s_worker_ipv4" {
#   zone_id = local.current_cf_zone_id
#   count   = length(hcloud_server.k8s_worker)
#   name    = hcloud_server.k8s_worker[count.index].name
#   content = hcloud_server.k8s_worker[count.index].ipv4_address
#   type    = "A"
#   ttl     = 300
#   proxied = false
# }

# resource "cloudflare_dns_record" "k8s_worker_ipv6" {
#   zone_id = local.current_cf_zone_id
#   count   = length(hcloud_server.k8s_worker)
#   name    = hcloud_server.k8s_worker[count.index].name
#   content = hcloud_server.k8s_worker[count.index].ipv6_address
#   type    = "AAAA"
#   ttl     = 300
#   proxied = false
# }
