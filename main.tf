# Create a server
resource "hcloud_server" "vpn-server" {
  count       = var.counter
  name        = "${var.name}-${var.counter}"
  image       = var.image
  server_type = var.server_type
  datacenter  = var.datacenter
  ssh_keys    = var.ssh_keys

### This field is just for my practice and create an inventory file for ansible ###

  # provisioner "local-exec" {
  #   command = "./generate_inventory.sh"
  #   environment = {
  #     SERVER_IP = self.ipv4_address
  #   }
  # }

###################################################################################

}

output "server_ipv4_address" {
  value = hcloud_server.vpn-server.*.ipv4_address
}
