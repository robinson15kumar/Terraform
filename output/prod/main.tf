
module "resource_group" {
  source = "../modules/azurerm_rg"

}

module "storage_account" {
  source = "../modules/azurerm_storage"
  depends_on = [ module.resource_group ]

}

module "blob-container" {
  source = "../modules/azurerm_blob"
  storage_account_id = module.storage_account.storage_account_id
  depends_on = [ module.storage_account ]

}