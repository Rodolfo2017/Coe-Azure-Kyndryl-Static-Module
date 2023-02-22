output "azure_key_vault_id" {
  description = "The ID of the Key Vault."
  value = azurerm_key_vault.coe_azure_key_vault.id
}

output "azure_key_vault_vault_uri" {
  description = "The URI of the Key Vault, used for performing operations on keys and secrets."
  value = azurerm_key_vault.coe_azure_key_vault.vault_uri
}