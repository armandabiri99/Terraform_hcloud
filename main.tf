# Create a server
resource "hcloud_server" "vpn-server" {
  count       = var.counter
  name        = "${var.name}-${var.counter}"
  image       = var.image
  server_type = var.server_type
  datacenter  = var.datacenter
  ssh_keys    = var.ssh_keys
}
