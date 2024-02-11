variable "resource_group_name" {
  default     = "rg-synapse"
  type        = string
  description = "The name of the resource group in which to create the storage account"
}
variable "storageccountname" {
  type        = string
  default     = "synapsestorageaccount02"
  description = "Specifies the name of the synapse analytics. Changing this forces a new resource to be created."
}
variable "account_tier" {
  type = string
  default = "Standard"
}
variable "account_replication_type" {
  type = string
  default = "LRS"
}
variable "account_kind" {
  type = string
  default = "StorageV2"
}
variable "is_hns_enabled" {
  type = bool
  default = true
}
variable "azurerm_storage_data_lake_gen2_filesystem_name" {
  type = string
  default = "datalakefilesystem"
}
variable "azurerm_synapse_workspace_name" {
  type = string
  default = "workspace1"
  description = "must be globally unique within Azure, not just within your subscription or resource group. "
}
variable "sql_administrator_login" {
  type = string
  default = "sqladminuser"
}
variable "sql_administrator_login_password" {
  type = string
  default = "H@Sh1CoR3!"
}
variable "identity_type" {
  type = string
  default = "SystemAssigned"
}
variable "object_id" {
  type = string
  default = "4a6ef149-505c-43de-b914-f894c3cf3795"
  description = " The object id of the Azure AD Administrator of this Synapse Workspace."
}
variable "tenant_id" {
  type = string
  default = "856b4d22-cc4b-4afc-9844-469defcc0941"
  description = "The tenant id of the Azure AD Administrator of this Synapse Workspace."
}
variable "location" {
  default     = "West Europe"
  type        = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created"
}
variable "tags" {
  type        = map(string)
  description = "A map of tags to apply to resources."
  default = {
    "environment" = "datafactory",
    "purpose"       = "DataOps learning",
    "targetgroup"   = "Gebeya inc"
  }
}
variable "gh_account_name" {
  type = string
  description = "Specifies the GitHub account name"
  default = ""
}
variable "gh_branch_name" {
  type = string
  description = "Specifies the branch of the repository to get code from"
  default = ""
}
variable "gh_git_url" {
  type = string
  description = "Specifies the GitHub Enterprise host name"
  default = ""
}
variable "gh_repository_name" {
  type = string
  description = "Specifies the name of the git repository"
  default = ""
}
variable "gh_root_folder" {
  type = string
  description = "Specifies the root folder within the repository. Set to / for the top level."
  default = ""
}
variable "gh_publishing_enabled" {
  type = bool
  description = "Is automated publishing enabled? Defaults to true"
  default = true
}

