resource "azurerm_storage_container" "bronzeContainer" {
  name                  = "tf-state"
  storage_account_name  = azurerm_storage_account.storageccnt.name
  container_access_type = "private"
}

