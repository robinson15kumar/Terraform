
stg_list = {

  stg1 = {
    name                     = "robstorageaccount81"
    resource_group_name      = "rg-robinson"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
  stg2 = {
    name                     = "robstorageaccount82"
    resource_group_name      = "rg-robinson"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "GRS"
    network_rules = {
      rule1 = {
        default_action = "Deny"
        bypass         = ["None"]
        ip_rules       = ["20.40.50.60/30", "104.211.25.30/30"]
      }
    }
  }
}