resource "hcloud_network" "k8s_private_net" {
  name     = "k8s-priv-net"
  ip_range = "10.15.0.0/16"
}


resource "hcloud_network_subnet" "k8s_master_net" {
  network_id   = hcloud_network.k8s_private_net.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.15.1.0/24"
}

resource "hcloud_network_subnet" "k8s_worker_net" {
  network_id   = hcloud_network.k8s_private_net.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = "10.15.2.0/24"
}