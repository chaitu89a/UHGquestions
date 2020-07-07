resource "azurerm_virtual_machine" "vm1" {
  name = "chaituvm1"
  location = "${var.location1}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  network_interface_ids = ["${azurerm_network_interface.public_nic.id}"]
  vm_size = "Standard_DS1_v2"

  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer = "UbuntuServer"
    sku = "16.04-LTS"
    version = "latest"
  }

  storage_os_disk {
    name = "osdisk-1"
    vhd_uri = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/osdisk-1.vhd"
    caching = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "ubuntuvm1"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }
}

resource "azurerm_virtual_machine" "vm2" {
  name = "chaituvm2"
  location = "${var.location2}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"
  network_interface_ids = ["${azurerm_network_interface.private_nic.id}"]
  vm_size = "Standard_DS1_v2"

  delete_os_disk_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name          = "osdisk-2"
    vhd_uri       = "${azurerm_storage_account.storage.primary_blob_endpoint}${azurerm_storage_container.container.name}/osdisk-2.vhd"
    caching       = "ReadWrite"
    create_option = "FromImage"
  }

  os_profile {
    computer_name  = "ubuntuvm2"
    admin_username = "${var.vm_username}"
    admin_password = "${var.vm_password}"
  }
}