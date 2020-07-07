resource "azurerm_storage_account" "storage" {
  name = "storage11"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  location = "${var.location1}"
  account_type = "Standard_LRS"
}

resource "azurerm_storage_container" "container" {
  name = "vhds"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  storage_account_name = "${azurerm_storage_account.storage.name}"
  container_access_type = "private"
}