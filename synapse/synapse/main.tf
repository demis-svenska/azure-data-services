data "azurerm_subscription" "current" {
}
data "azurerm_client_config" "current" {
}
resource "azurerm_resource_group" "rg-synapse" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storageAccount" {
  name                     = var.storageccountname
  resource_group_name      = azurerm_resource_group.rg-synapse.name
  location                 = azurerm_resource_group.rg-synapse.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  is_hns_enabled           = var.is_hns_enabled
}

resource "azurerm_storage_data_lake_gen2_filesystem" "datalake_filesystem" {
  name               = var.azurerm_storage_data_lake_gen2_filesystem_name
  storage_account_id = azurerm_storage_account.storageAccount.id
}

resource "azurerm_synapse_workspace" "synapseworkspace" {
  name                                 = var.azurerm_synapse_workspace_name
  resource_group_name                  = azurerm_resource_group.rg-synapse.name
  location                             = azurerm_resource_group.rg-synapse.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.datalake_filesystem.id
  sql_administrator_login              = var.sql_administrator_login
  sql_administrator_login_password     = var.sql_administrator_login_password

  aad_admin {
    login     = "AzureAD Admin"
    object_id = var.object_id
    tenant_id = var.tenant_id
  }

  identity {
    type = var.identity_type
  }

  tags = var.tags
}
