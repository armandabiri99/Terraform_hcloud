# Create a server
resource "hcloud_server" "vpn-server" {
  name        = var.name
  image       = var.image
  server_type = var.server_type
  datacenter  = var.datacenter
  ssh_keys    = var.ssh_keys
}
