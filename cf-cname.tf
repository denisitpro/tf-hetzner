# resource "cloudflare_dns_record" "grafana" {
#   zone_id = local.current_cf_zone_id
#   name    = "grafana"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 300
#   proxied = false
# }
#
#
# resource "cloudflare_dns_record" "vault" {
#   zone_id = local.current_cf_zone_id
#   name    = "vault"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 1
#   proxied = true
# }
#
#
# resource "cloudflare_dns_record" "alfa" {
#   zone_id = local.current_cf_zone_id
#   name    = "alfa"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   #  ttl     = 300
#   proxied = false
# }
#
# resource "cloudflare_dns_record" "beta" {
#   zone_id = local.current_cf_zone_id
#   name    = "beta"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 300
#   proxied = false
# }
#
#
# resource "cloudflare_dns_record" "delta" {
#   zone_id = local.current_cf_zone_id
#   name    = "delta"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 300
#   proxied = false
# }
#
#
# resource "cloudflare_dns_record" "fox" {
#   zone_id = local.current_cf_zone_id
#   name    = "fox"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 300
#   proxied = false
# }
#
#
# resource "cloudflare_dns_record" "argocd" {
#   zone_id = local.current_cf_zone_id
#   name    = "argocd"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 300
#   proxied = false
# }
#
# resource "cloudflare_dns_record" "grpc_argocd" {
#   zone_id = local.current_cf_zone_id
#   name    = "grpc.argocd"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 300
#   proxied = false
# }
#
# resource "cloudflare_dns_record" "loki" {
#   zone_id = local.current_cf_zone_id
#   name    = "loki"
#   value   = cloudflare_dns_record.k8s_worker_lb_ipv4.hostname
#   type    = "CNAME"
#   ttl     = 300
#   proxied = false
# }
