# - MAP
# - MAP me hum keys ko kisi bhi sequence me likh de , par Terraform isko alphabetical order me execute karta hai

# my_rg_name = {
#   "dev-rob"  = "Central India"
#   "qa-rob"   = "West US"
#   "pre-rob"  = "West Europe"
#   "prod-rob" = "Canada Central"
# }

# - Nested MAP

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
    location = "Central India"
    tags = {
      environment = "prod"
    }
  }
}