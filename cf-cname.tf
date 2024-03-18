resource "cloudflare_record" "grafana" {
  zone_id = local.current_cf_zone_id
  name    = "grafana"
  value   = cloudflare_record.k8s_worker_ipv4[0].hostname
  type    = "CNAME"
  proxied = false
}


resource "cloudflare_record" "vault" {
  zone_id = local.current_cf_zone_id
  name    = "vault"
  value   = cloudflare_record.k8s_worker_ipv4[0].hostname
  type    = "CNAME"
  proxied = true
}


resource "cloudflare_record" "alfa_w01" {
  zone_id = local.current_cf_zone_id
  name    = "alfa"
  value   = cloudflare_record.k8s_worker_ipv4[0].hostname
  type    = "CNAME"
  proxied = true
}

resource "cloudflare_record" "beta_w01" {
  zone_id = local.current_cf_zone_id
  name    = "beta"
  value   = cloudflare_record.k8s_worker_ipv4[0].hostname
  type    = "CNAME"
  proxied = true
}


resource "cloudflare_record" "delta_w01" {
  zone_id = local.current_cf_zone_id
  name    = "delta"
  value   = cloudflare_record.k8s_worker_ipv4[0].hostname
  type    = "CNAME"
  proxied = false
}
