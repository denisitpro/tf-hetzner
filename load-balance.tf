resource "hcloud_load_balancer" "k8s_balancer" {
  name               = "k8s-load-balancer"
  load_balancer_type = "lb11"
  location           = "fsn1"
  #  algorithm          = "round_robin"
  labels = {
    "env" : "dev"
  }
}

resource "hcloud_load_balancer_target" "load_balancer_target" {
  count            = length(hcloud_server.k8s_master)
  type             = "server"
  load_balancer_id = hcloud_load_balancer.k8s_balancer.id
  server_id        = hcloud_server.k8s_master[count.index].id
}

# todo remove - need for debug load balancer
resource "hcloud_load_balancer_service" "load_balancer_service_22" {
  load_balancer_id = hcloud_load_balancer.k8s_balancer.id
  protocol         = "tcp"
  listen_port      = "22"
  destination_port = "22"
}

resource "hcloud_load_balancer_service" "load_balancer_service_6443" {
  load_balancer_id = hcloud_load_balancer.k8s_balancer.id
  protocol         = "tcp"
  listen_port      = "6443"
  destination_port = "6443"
  health_check {
    protocol = "tcp"
    port     = 6443
    interval = 5
    timeout  = 1
    retries  = 5
  }
}