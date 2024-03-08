resource "cloudflare_record" "k8s_cls_name" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.k8s_master)
  name    = "k8s"
  value   = cloudflare_record.k8s_master_ipv4[count.index].hostname
  type    = "CNAME"
  proxied = false
}