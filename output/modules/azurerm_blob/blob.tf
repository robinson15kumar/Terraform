variable "storage_account_id" {
  type        = string
  description = "The ID of the storage account to use for the blob container."
}

resource "azurerm_storage_container" "blob1" {
  name                  = "myblob1"
  storage_account_id    =  var.storage_account_id
  container_access_type = "private"
}