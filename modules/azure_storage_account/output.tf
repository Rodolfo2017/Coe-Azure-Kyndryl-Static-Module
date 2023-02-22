output "storage_account_id" {
  description = "The ID of the storage account."
  value       = try(azurerm_storage_account.coe_azure_storage_account.id)
}
