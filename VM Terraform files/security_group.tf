resource "azurerm_network_security_group" "nsg_vm1" {
  name = "VM1-NSG"
  location = "${var.location1}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"

  security_rule {
name = "AllowSSH"
priority = 100
direction = "Inbound"
access = "Allow"
protocol = "Tcp"
source_port_range = "*"
    destination_port_range = "22"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "nsg_vm2" {
  name = "VM2-NSG"
  location = "${var.location2}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"

  security_rule {
name = "AllowSSH"
priority = 100
direction = "Inbound"
access = "Allow"
protocol = "Tcp"
source_port_range = "*"
    destination_port_range = "22"
    source_address_prefix = "*"
    destination_address_prefix = "*"
  }
}