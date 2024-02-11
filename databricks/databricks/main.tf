data "azurerm_subscription" "current" {
}
data "azurerm_client_config" "current" {
}
resource "azurerm_resource_group" "rg-databricks" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_databricks_workspace" "databricks-Workspace" {
  name                = var.databricksname
  resource_group_name = azurerm_resource_group.rg-databricks.name
  location            = azurerm_resource_group.rg-databricks.location
  sku                 = var.sku
  tags = var.tags
}

