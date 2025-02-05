terraform {
  required_version = ">= 1.10.0"

  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "= 4.43.0"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.49.1"
    }
  }
}

provider "cloudflare" {
  api_token = var.CF_API_RW_TOKEN
}

provider "hcloud" {
  token = var.HTZ_TOKEN
}
