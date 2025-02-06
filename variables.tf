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

variable "zone_name" {
  default = "beta-82.win"
}

# calculate dns zone

data "cloudflare_zones" "current_cf_zone_id" {
  name = var.zone_name
}

locals {
  current_cf_zone_id = data.cloudflare_zones.current_cf_zone_id.result[0].id
}

output "current_cf_zone_id" {
  value = local.current_cf_zone_id
}
