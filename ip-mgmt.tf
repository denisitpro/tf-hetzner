resource "hcloud_primary_ip" "k8s_master_ipv4" {
  count         = 3 # not set length(hcloud_server.k8s_master) - cycle dependens
  name          = "k8s_01_ipv4-${format("%02d", count.index + 1)}"
  datacenter    = "fsn1-dc14"
  type          = "ipv4"
  assignee_type = "server"
  auto_delete   = false
}

resource "hcloud_primary_ip" "k8s_master_ipv6" {
  count         = 3
  name          = "k8s_01_ipv6-${format("%02d", count.index + 1)}"
  datacenter    = "fsn1-dc14"
  type          = "ipv6"
  assignee_type = "server"
  auto_delete   = false
}
