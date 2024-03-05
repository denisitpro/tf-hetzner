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