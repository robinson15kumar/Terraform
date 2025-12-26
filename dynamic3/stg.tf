
resource "azurerm_storage_account" "stg1" {
  for_each = var.stg_list
  # Simple Arguments
  name                     = each.value.name
  resource_group_name      = "rg-robinson"
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  # Block Arguments
  dynamic "network_rules" {
    for_each = {
      rule1 = {
        default_action = "Deny"
        bypass         = ["None"]
        ip_rules       = ["20.40.50.60/30", "104.211.25.30/30"]
      }
    }
    content {
      default_action = network_rules.value.default_action
      bypass         = network_rules.value.bypass
      ip_rules       = network_rules.value.ip_rules
    }
  }
}