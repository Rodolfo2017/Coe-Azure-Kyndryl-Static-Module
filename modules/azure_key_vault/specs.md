## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Module

<h2>azure_key_vault </h2>

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.coe_azure_key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_key_vault_access_policy_key_permissions"></a> [azure\_key\_vault\_access\_policy\_key\_permissions](#input\_azure\_key\_vault\_access\_policy\_key\_permissions) | (Optional) List of key permissions. Possible values are Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, Purge, Recover, Restore, Sign, UnwrapKey, Update, Verify, WrapKey, Release, Rotate, GetRotationPolicy and SetRotationPolicy. | `string` | n/a | no |
| <a name="input_azure_key_vault_access_policy_secret_permissions"></a> [azure\_key\_vault\_access\_policy\_secret\_permissions](#input\_azure\_key\_vault\_access\_policy\_secret\_permissions) | (Optional) List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set. | `string` | n/a | no |
| <a name="input_azure_key_vault_access_policy_storage_permissions"></a> [azure\_key\_vault\_access\_policy\_storage\_permissions](#input\_azure\_key\_vault\_access\_policy\_storage\_permissions) | (Optional) List of storage permissions, must be one or more from the following: Backup, Delete, DeleteSAS, Get, GetSAS, List, ListSAS, Purge, Recover, RegenerateKey, Restore, Set, SetSAS and Update. | `string` | n/a | no |
| <a name="input_azure_key_vault_enabled_for_disk_encryption"></a> [azure\_key\_vault\_enabled\_for\_disk\_encryption](#input\_azure\_key\_vault\_enabled\_for\_disk\_encryption) | (Optional) Boolean flag to specify whether Azure Disk Encryption is permitted to retrieve secrets from the vault and unwrap keys. | `bool` | n/a | no |
| <a name="input_azure_key_vault_name"></a> [azure\_key\_vault\_name](#input\_azure\_key\_vault\_name) | (Required) Specifies the name of the Key Vault. Changing this forces a new resource to be created. The name must be globally unique. If the vault is in a recoverable state then the vault will need to be purged before reusing the name. | `string` | n/a | yes |
| <a name="input_azure_key_vault_purge_protection_enabled"></a> [azure\_key\_vault\_purge\_protection\_enabled](#input\_azure\_key\_vault\_purge\_protection\_enabled) | (Optional) Is Purge Protection enabled for this Key Vault? | `bool` | n/a | no |
| <a name="input_azure_key_vault_sku_name"></a> [azure\_key\_vault\_sku\_name](#input\_azure\_key\_vault\_sku\_name) | (Required) The Name of the SKU used for this Key Vault. Possible values are standard and premium. | `string` | n/a | yes |
| <a name="input_azure_key_vault_soft_delete_retention_days"></a> [azure\_key\_vault\_soft\_delete\_retention\_days](#input\_azure\_key\_vault\_soft\_delete\_retention\_days) | (Optional) The number of days that items should be retained for once soft-deleted. This value can be between 7 and 90 (the default) days. | `number` | n/a | no |
| <a name="input_azure_resource_group_location"></a> [azure\_resource\_group\_location](#input\_azure\_resource\_group\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | (Required) The name of the resource group in which to create the Key Vault. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the Azure Key Vault. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_key_vault_id"></a> [azure\_key\_vault\_id](#output\_azure\_key\_vault\_id) | The ID of the Key Vault. |
| <a name="output_azure_key_vault_vault_uri"></a> [azure\_key\_vault\_vault\_uri](#output\_azure\_key\_vault\_vault\_uri) | The URI of the Key Vault, used for performing operations on keys and secrets. |
