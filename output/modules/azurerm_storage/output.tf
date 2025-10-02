output "storage_account_id" {
  description = "The ID of the Azure Storage Container."
  # value       = azurerm_storage_container.example_container.id
  value       = azurerm_storage_account.stg1.id
}