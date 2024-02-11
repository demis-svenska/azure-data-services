data "azurerm_subscription" "current" {
}
data "azurerm_client_config" "current" {
}
resource "azurerm_resource_group" "rg-storage" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storageccnt" {
  name                     = var.storageaccountname
  resource_group_name      = azurerm_resource_group.rg-storage.name
  location                 = azurerm_resource_group.rg-storage.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}
