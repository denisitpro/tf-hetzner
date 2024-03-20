resource "hcloud_load_balancer" "k8s_worker_lb" {
  name               = "k8s-worker-lb"
  load_balancer_type = "lb11"
  location           = "fsn1"
  #  algorithm          = "round_robin"
  labels = {
    "env" : "dev"
  }
}

resource "hcloud_load_balancer_target" "k8s_worker_lb_target" {
  count            = length(hcloud_server.k8s_worker)
  type             = "server"
  load_balancer_id = hcloud_load_balancer.k8s_worker_lb.id
  server_id        = hcloud_server.k8s_worker[count.index].id
}

resource "hcloud_load_balancer_service" "k8s_worker_lb_service_80" {
  load_balancer_id = hcloud_load_balancer.k8s_worker_lb.id
  protocol         = "tcp"
  listen_port      = "80"
  destination_port = "31811" # port  svc nginx-ingress-ingress-nginx-controller
  health_check {
    protocol = "tcp"
    port     = 31811
    interval = 30
    timeout  = 1
    retries  = 5
  }
}

resource "hcloud_load_balancer_service" "k8s_worker_lb_service_443" {
  load_balancer_id = hcloud_load_balancer.k8s_worker_lb.id
  protocol         = "tcp"
  listen_port      = "443"
  destination_port = "30779"
  health_check {
    protocol = "tcp"
    port     = 30779
    interval = 30
    timeout  = 1
    retries  = 5
  }
}