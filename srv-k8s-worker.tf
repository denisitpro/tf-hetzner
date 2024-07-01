# resource "hcloud_server" "k8s_worker" {
#   count       = 2
#   name        = "w-${format("%02d", count.index + 1)}"
#   server_type = "cx22"
#   image       = "ubuntu-22.04"
#   location    = "fsn1"
#   ssh_keys = [
#     hcloud_ssh_key.den_ssh_key.id
#   ]
#   user_data = file("./user_data/user_data_hetzner_v1.sh")
#
#   lifecycle {
#     ignore_changes = [user_data, image]
#   }
#
#   public_net {
#     ipv4_enabled = true
#     ipv6_enabled = true
#   }
#
# }
#
