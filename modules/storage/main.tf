data "azurerm_resource_group" "main" {
  name = var.resource_group_name
}

resource "azurerm_storage_account" "main" {
  name                     = "st${var.name}"
  resource_group_name      = data.azurerm_resource_group.main.name
  location                 = data.azurerm_resource_group.main.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}
