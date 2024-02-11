provider "azurerm" {
  features {}
  skip_provider_registration = true
  storage_use_azuread = true
}
module "datafactory" {
 source = "../datafactory"
 resource_group_name = "rg-datafactory"
 location = "west europe"
}