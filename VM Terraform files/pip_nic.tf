resource "azurerm_public_ip" "pip1" {
  name = "vm1-pip"
  location = "${var.location1}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation = "static"
}

resource "azurerm_network_interface" "public_nic" {
  name = "vm1-nic"
  location = "${var.location1}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_vm1.id}"

  ip_configuration {
    name = "vm1Private"
    subnet_id = "${azurerm_subnet.subnet_1.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id= "${azurerm_public_ip.pip1.id}"
  }
}

resource "azurerm_public_ip" "pip2" {
  name = "vm2-pip"
  location  = "${var.location2}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation = "static"
}

resource "azurerm_network_interface" "private_nic" {
  name = "vm2-nic"
  location = "${var.location2}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.terraform_nsg_vm2.id}"

  ip_configuration {
    name = "vm2Private"
    subnet_id = "${azurerm_subnet.subnet_2.id}"
    private_ip_address_allocation = "static"
    private_ip_address = "10.0.1.5"
    public_ip_address_id  = "${azurerm_public_ip.pip2.id}"
  }
}