resource "cloudflare_record" "swfs_master_ip4" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.swfs_master)
  name            = hcloud_server.swfs_master[count.index].name
  content         = hcloud_server.swfs_master[count.index].ipv4_address
  type            = "A"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}


resource "cloudflare_record" "swfs_master_ipv6" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.swfs_master)
  name            = hcloud_server.swfs_master[count.index].name
  content         = hcloud_server.swfs_master[count.index].ipv6_address
  type            = "AAAA"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "swfs_volume_ip4" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.swfs_volume)
  name            = hcloud_server.swfs_volume[count.index].name
  content         = hcloud_server.swfs_volume[count.index].ipv4_address
  type            = "A"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}

resource "cloudflare_record" "swfs_volume_ipv6" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.swfs_volume)
  name            = hcloud_server.swfs_volume[count.index].name
  content         = hcloud_server.swfs_volume[count.index].ipv6_address
  type            = "AAAA"
  ttl             = 300
  proxied         = false
  allow_overwrite = true
}
