data "azurerm_subscription" "current" {
}
data "azurerm_client_config" "current" {
}
resource "azurerm_resource_group" "rg-datafactory" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_data_factory" "datafactory" {
  name                     = var.datafactoryname
  resource_group_name      = azurerm_resource_group.rg-datafactory.name
  location                 = azurerm_resource_group.rg-datafactory.location
  tags                     = var.tags
}
