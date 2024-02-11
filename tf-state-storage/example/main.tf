
module "storageaccount" {
 source = "../storageaccnt"
 resource_group_name = "rg-terraform-state"
 storageaccountname = "terraformstategebeya01"
 account_tier = "Standard"
 location = "west europe"
}