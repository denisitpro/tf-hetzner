resource "cloudflare_record" "grafana" {
  zone_id = local.current_cf_zone_id
  name    = "grafana"
  value   = cloudflare_record.k8s_balancer_ipv4.hostname
  type    = "CNAME"
  proxied = true
}


resource "cloudflare_record" "vault" {
  zone_id = local.current_cf_zone_id
  name    = "vault"
  value   = cloudflare_record.k8s_balancer_ipv4.hostname
  type    = "CNAME"
  proxied = true
}
