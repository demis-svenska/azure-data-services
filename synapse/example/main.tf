provider "azurerm" {
  features {}
  skip_provider_registration = true
  storage_use_azuread = true
}
module "synapseAnalytics" {
 source = "../synapse"
 resource_group_name = "rg-synapsetest"
 location = "west europe"
 azurerm_synapse_workspace_name = "gebeyaworkspace01"
}