<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | = 4.43.0 |
| <a name="requirement_hcloud"></a> [hcloud](#requirement\_hcloud) | 1.48.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 4.43.0 |
| <a name="provider_hcloud"></a> [hcloud](#provider\_hcloud) | 1.48.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.awx_ipv4](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [cloudflare_record.awx_ipv6](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [cloudflare_record.k8s_master_ipv4](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [cloudflare_record.k8s_master_ipv6](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [cloudflare_record.k8s_master_lb_ipv4](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [cloudflare_record.k8s_master_lb_ipv6](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [cloudflare_record.k8s_worker_ipv4](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [cloudflare_record.k8s_worker_ipv6](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/resources/record) | resource |
| [hcloud_load_balancer.k8s_master_lb](https://registry.terraform.io/providers/hetznercloud/hcloud/1.48.1/docs/resources/load_balancer) | resource |
| [hcloud_load_balancer_service.k8s_master_lb_service_6443](https://registry.terraform.io/providers/hetznercloud/hcloud/1.48.1/docs/resources/load_balancer_service) | resource |
| [hcloud_load_balancer_target.k8s_master_lb_target](https://registry.terraform.io/providers/hetznercloud/hcloud/1.48.1/docs/resources/load_balancer_target) | resource |
| [hcloud_server.awx](https://registry.terraform.io/providers/hetznercloud/hcloud/1.48.1/docs/resources/server) | resource |
| [hcloud_server.k8s_master](https://registry.terraform.io/providers/hetznercloud/hcloud/1.48.1/docs/resources/server) | resource |
| [hcloud_server.k8s_worker](https://registry.terraform.io/providers/hetznercloud/hcloud/1.48.1/docs/resources/server) | resource |
| [hcloud_ssh_key.den_ssh_key](https://registry.terraform.io/providers/hetznercloud/hcloud/1.48.1/docs/resources/ssh_key) | resource |
| [cloudflare_zone.current_cf_zone_id](https://registry.terraform.io/providers/cloudflare/cloudflare/4.43.0/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_CF_API_RW_TOKEN"></a> [CF\_API\_RW\_TOKEN](#input\_CF\_API\_RW\_TOKEN) | n/a | `string` | n/a | yes |
| <a name="input_HTZ_TOKEN"></a> [HTZ\_TOKEN](#input\_HTZ\_TOKEN) | n/a | `string` | n/a | yes |
| <a name="input_den_public_key"></a> [den\_public\_key](#input\_den\_public\_key) | n/a | `string` | `"ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO7MRK0SR14QnaopknO/V74zRhlZpbHCX8vefJg1nQha den@pub"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dns_zone_id"></a> [dns\_zone\_id](#output\_dns\_zone\_id) | n/a |
<!-- END_TF_DOCS -->