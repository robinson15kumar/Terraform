rgs = {
  rg1 = {
    name     = "demo-robinson"
    location = "centralindia"
    tags = {
      env = "dev"
    }
  }
}

mynetwork = {
  network1 = {
    name                = "dev-rob-vnet"
    location            = "centralindia"
    resource_group_name = "demo-robinson"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
    # ip_address_pool     = [{
    #   id                =      ""
    #   number_of_ip_addresses = "100"
    # }]

    subnet = [
      {
        name             = "frontend-rob-subnet"
        address_prefixes = ["10.0.1.0/24"]
      }
      ,
      {
        name             = "backend-rob-subnet"
        address_prefixes = ["10.0.2.0/24"]
      }
    ]
  }
}

