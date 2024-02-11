resource "azurerm_storage_container" "bronzeContainer" {
  name                  = "bronze"
  storage_account_name  = azurerm_storage_account.storageccnt.name
  container_access_type = "private"
}
resource "azurerm_storage_container" "silverContainer" {
  name                  = "silver"
  storage_account_name  = azurerm_storage_account.storageccnt.name
  container_access_type = "private"
}
resource "azurerm_storage_container" "goldContainer" {
  name                  = "gold"
  storage_account_name  = azurerm_storage_account.storageccnt.name
  container_access_type = "private"
}

