resource "hcloud_server" "k8s_master" {
  count       = 3
  name        = "k8s-${format("%02d", count.index + 1)}"
  server_type = "cx22"
  image       = "ubuntu-24.04"
  location    = "fsn1"
  ssh_keys = [
    hcloud_ssh_key.den_ssh_key.id
  ]
  user_data = file("./user_data/user_data_hetzner_v1.sh")

  lifecycle {
    ignore_changes = [user_data, image]
  }

  #   public_net {
  #     ipv4 = hcloud_primary_ip.k8s_master_ipv4[count.index].id
  #     ipv6 = hcloud_primary_ip.k8s_master_ipv6[count.index].id
  #   }
  #   depends_on = [hcloud_primary_ip.k8s_master_ipv4, hcloud_primary_ip.k8s_master_ipv6]
}
