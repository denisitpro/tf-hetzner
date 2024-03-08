variable "den_public_key" {
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO7MRK0SR14QnaopknO/V74zRhlZpbHCX8vefJg1nQha den@pub"
}


variable "HTZ_TOKEN" {
  type      = string
  sensitive = true
}

variable "CF_API_RW_TOKEN" {
  type      = string
  sensitive = true
}


data "cloudflare_zone" "current_cf_zone_id" {
  name = "beta-82.win"
}

locals {
  current_cf_zone_id   = data.cloudflare_zone.current_cf_zone_id.zone_id
  current_cf_zone_name = data.cloudflare_zone.current_cf_zone_id.name

}

output "dns_zone_id" {
  value = local.current_cf_zone_id
}