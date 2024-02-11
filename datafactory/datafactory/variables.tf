variable "resource_group_name" {
  default     = "rg-storage"
  type        = string
  description = "The name of the resource group in which to create the storage account"
}
variable "datafactoryname" {
  type        = string
  default     = "gebeyadatafactory"
  description = "Specifies the name of the Data Factory. Changing this forces a new resource to be created."
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

