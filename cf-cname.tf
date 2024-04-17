resource "cloudflare_record" "grafana" {
  zone_id = local.current_cf_zone_id
  name    = "grafana"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = false
}


resource "cloudflare_record" "vault" {
  zone_id = local.current_cf_zone_id
  name    = "vault"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = false
}


resource "cloudflare_record" "alfa" {
  zone_id = local.current_cf_zone_id
  name    = "alfa"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "beta" {
  zone_id = local.current_cf_zone_id
  name    = "beta"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = false
}


resource "cloudflare_record" "delta" {
  zone_id = local.current_cf_zone_id
  name    = "delta"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = false
}


resource "cloudflare_record" "fox" {
  zone_id = local.current_cf_zone_id
  name    = "fox"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = false
}


resource "cloudflare_record" "argocd" {
  zone_id = local.current_cf_zone_id
  name    = "argocd"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = false
}

resource "cloudflare_record" "grpc_argocd" {
  zone_id = local.current_cf_zone_id
  name    = "grpc.argocd"
  value   = cloudflare_record.k8s_worker_lb_ipv4.hostname
  type    = "CNAME"
  proxied = false
}