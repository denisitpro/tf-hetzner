resource "cloudflare_record" "teleport_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.teleport)
  name            = "tp"
  content         = hcloud_server.teleport[count.index].ipv4_address
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

# resource "cloudflare_record" "teleport_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.teleport)
#   name            = "tp"
#   content           = hcloud_server.teleport[count.index].ipv6_address
#   type            = "AAAA"
#   proxied         = false
#   allow_overwrite = true
# }


resource "cloudflare_record" "teleport_wild_ipv4" {
  zone_id         = local.current_cf_zone_id
  count           = length(hcloud_server.teleport)
  name            = "*.tp"
  content         = hcloud_server.teleport[count.index].ipv4_address
  type            = "A"
  proxied         = false
  allow_overwrite = true
}

# resource "cloudflare_record" "teleport_wild_ipv6" {
#   zone_id         = local.current_cf_zone_id
#   count           = length(hcloud_server.teleport)
#   name            = "*.tp"
#   content           = hcloud_server.teleport[count.index].ipv6_address
#   type            = "AAAA"
#   proxied         = false
#   allow_overwrite = true
# }



