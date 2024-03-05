resource "hcloud_ssh_key" "den_ssh_key" {
  name       = "den-ssh-key"
  public_key = var.den_public_key
}