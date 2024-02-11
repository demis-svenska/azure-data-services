provider "azurerm" {
  features {}
  skip_provider_registration = true
  storage_use_azuread = true
}
module "databricks" {
 source = "../databricks"
 resource_group_name = "rg-databricks"
 location = "west europe"
 sku = "standard"
}