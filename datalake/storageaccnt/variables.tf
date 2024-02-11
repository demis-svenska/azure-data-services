variable "resource_group_name" {
  default     = "rg-storage"
  type        = string
  description = "The name of the resource group in which to create the storage account"
}
variable "is_hns_enabled" {
  default     = true
  type        = bool
  description = "This can be used with Azure Data Lake Storage Gen 2"
}
variable "storageaccountname" {
  type        = string
  default     = "gebeyateststaccnt"
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created."
}
variable "account_tier" {
  default     = "Standard"
  type        = string
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium.Changing this forces a new resource to be created"
}
variable "account_replication_type" {
  default     = "LRS"
  type        = string
  description = "Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS"
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
    "environment" = "staging",
    "purpose"       = "DataOps learning",
    "targetgroup"   = "Gebeya inc"
  }
}
