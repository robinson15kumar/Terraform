stg_list = {
  stg1 = {
    name                     = "robstorageaccount83"
    resource_group_name      = "rg-robinson"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    network_rules            = {}
    # network_rules = {
    #   rule1 =  {       
    #     default_action = "Deny"
    #     bypass         = ["AzureServices"]
    #     ip_rules       = ["20.40.50.60/30", "104.211.25.30/30"]
    #   }
    # }    
  }

  stg2 = {
    name                     = "robstorageaccount84"
    resource_group_name      = "rg-robinson"
    location                 = "centralindia"
    account_tier             = "Standard"
    account_replication_type = "GRS"

    network_rules = {
      rule2 =  {       
        default_action = "Deny"
        bypass         = ["None"]
        ip_rules       = ["10.40.50.60/30", "10.211.25.30/30"]
      }
    }
  }
}