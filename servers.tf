#resource "hcloud_server" "k8s_master" {
#  name        = "k1"
#  server_type = "cx21"
#  image       = "ubuntu-22.04"
#  location    = "fsn1"
#  ssh_keys = [
#    hcloud_ssh_key.den_ssh_key.id
#  ]
#  user_data = file("./user_data/user_data_hetzner_v1.sh")
#
#  lifecycle {
#    ignore_changes = [user_data, image]
#  }
#
#  public_net {
#    ipv4_enabled = true
#    ipv6_enabled = true
#  }
#
#}
#
