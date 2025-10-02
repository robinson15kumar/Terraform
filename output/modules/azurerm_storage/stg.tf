resource "azurerm_storage_account" "stg1" {
    name = "dummystore1"
    location = "Central India"
    account_replication_type = "LRS"
    resource_group_name = "luxoft_rg1"
    account_tier = "Standard"
}