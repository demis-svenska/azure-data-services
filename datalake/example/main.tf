
module "storageaccount" {
 source = "../storageaccnt"
 resource_group_name = "rg-storage"
 storageaccountname = "gebeyateststorageaccount"
 account_tier = "Standard"
 location = "west europe"
}