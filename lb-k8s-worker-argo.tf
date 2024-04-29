#resource "hcloud_load_balancer" "k8s_worker_argo_lb" {
#  name               = "k8s-worker-argo-lb"
#  load_balancer_type = "lb11"
#  location           = "fsn1"
#  #  algorithm          = "round_robin"
#  labels = {
#    "env" : "argo"
#  }
#}
#
#resource "hcloud_load_balancer_target" "k8s_worker_argo_lb_target" {
#  count            = length(hcloud_server.k8s_worker)
#  type             = "server"
#  load_balancer_id = hcloud_load_balancer.k8s_worker_argo_lb.id
#  server_id        = hcloud_server.k8s_worker[count.index].id
#}
#
#resource "hcloud_load_balancer_service" "k8s_worker_argo_lb_service_80" {
#  load_balancer_id = hcloud_load_balancer.k8s_worker_argo_lb.id
#  protocol         = "tcp"
#  listen_port      = "80"
#  destination_port = "32313" # port  svc nginx-ingress-ingress-nginx-controller
#  health_check {
#    protocol = "tcp"
#    port     = 32313
#    interval = 30
#    timeout  = 1
#    retries  = 5
#  }
#}
#
#resource "hcloud_load_balancer_service" "k8s_worker_argo_lb_service_443" {
#  load_balancer_id = hcloud_load_balancer.k8s_worker_argo_lb.id
#  protocol         = "tcp"
#  listen_port      = "443"
#  destination_port = "31047"
#  health_check {
#    protocol = "tcp"
#    port     = 31047
#    interval = 30
#    timeout  = 1
#    retries  = 5
#  }
#}