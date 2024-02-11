variable "resource_group_name" {
  default     = "rg-databricks"
  type        = string
  description = "The name of the resource group in which to create the databricks"
}
variable "databricksname" {
  type        = string
  default     = "databrickstest"
  description = "Specifies the name of the synapse analytics. Changing this forces a new resource to be created."
}
variable "account_tier" {
  type = string
  default = "Standard"
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
variable "sku" {
  type = string
  default = "standard"
  description = "The sku to use for the Databricks Workspace. Possible values are standard, premium, or trial"
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
    "environment" = "databricks",
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

