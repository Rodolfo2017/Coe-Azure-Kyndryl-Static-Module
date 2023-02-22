output "azure_cosmosdb_account_id" {
  description = "The CosmosDB Account ID."
  value       = azurerm_cosmosdb_account.coe_azure_cosmosdb_account.id
}

output "azure_cosmosdb_account_endpoint" {
  description = "The endpoint used to connect to the CosmosDB account."
  value       = azurerm_cosmosdb_account.coe_azure_cosmosdb_account.endpoint
}

output "azure_cosmosdb_account_connection_strings" {
  description = "A list of connection strings available for this CosmosDB account."
  value          = azurerm_cosmosdb_account.coe_azure_cosmosdb_account.connection_strings
}