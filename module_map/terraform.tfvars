my_rg_name = {
  rg1 = {
    name     = "dev-rob"
    location = "Central India"
    tags = {
      environment = "dev"
    }
  }
  rg2 = {
    name     = "prod-rob"
    location = "West US"
    tags = {
      environment = "prod"
    }
  }
}
my_storege_acc = {
  stg1 = {
    name                     = "devrobstoreacc"
    location                 = "West US"
    resource_group_name      = "dev-rob"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
  stg2 = {
    name                     = "prodrobstoreacc"
    location                 = "Central India"
    resource_group_name      = "prod-rob"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}