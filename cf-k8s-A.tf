# resource "cloudflare_record" "k8s_worker_ipv4" {

# }


resource "cloudflare_dns_record" "k8s_worker_ipv4" {
  zone_id = local.current_cf_zone_id
  count   = length(hcloud_server.k8s_worker)
  name    = hcloud_server.k8s_worker[count.index].name
  content = hcloud_server.k8s_worker[count.index].ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false
}