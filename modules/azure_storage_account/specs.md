## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Module

<h2>azure_storage_account</h2>

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.coe_azure_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_resource_group_location"></a> [azure\_resource\_group\_location](#input\_azure\_resource\_group\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | (Required) The name of the resource group in which to create the storage account. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_storage_access_tier"></a> [azure\_storage\_access\_tier](#input\_azure\_storage\_access\_tier) | (Optional) Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts. Valid options are Hot and Cool, defaults to Hot. | `string` | n/a | no |
| <a name="input_azure_storage_account_account_kind"></a> [azure\_storage\_account\_account\_kind](#input\_azure\_storage\_account\_account\_kind) | (Optional) Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2. | `string` | n/a | no |
| <a name="input_azure_storage_account_blob_properties_delete_retention_policy_days"></a> [azure\_storage\_account\_blob\_properties\_delete\_retention\_policy\_days](#input\_azure\_storage\_account\_blob\_properties\_delete\_retention\_policy\_days) | (Optional) Specifies the number of days that the blob should be retained, between 1 and 365 days. Defaults to 7. | `number` | n/a | no |
| <a name="input_azure_storage_account_blob_properties_versioning_enabled"></a> [azure\_storage\_account\_blob\_properties\_versioning\_enabled](#input\_azure\_storage\_account\_blob\_properties\_versioning\_enabled) | (Optional) Is versioning enabled? Default to false. | `bool` | n/a | no |
| <a name="input_azure_storage_account_enable_https_traffic_only"></a> [azure\_storage\_account\_enable\_https\_traffic\_only](#input\_azure\_storage\_account\_enable\_https\_traffic\_only) | (Optional) Boolean flag which forces HTTPS if enabled, see here for more information. Defaults to true. | `bool` | n/a | no |
| <a name="input_azure_storage_account_min_tls_version"></a> [azure\_storage\_account\_min\_tls\_version](#input\_azure\_storage\_account\_min\_tls\_version) | (Optional) The minimum supported TLS version for the storage account. Possible values are TLS1\_0, TLS1\_1, and TLS1\_2. Defaults to TLS1\_2 for new storage accounts. | `string` | n/a | no |
| <a name="input_azure_storage_account_name"></a> [azure\_storage\_account\_name](#input\_azure\_storage\_account\_name) | Name of the bucket | `string` | n/a | yes |
| <a name="input_azure_storage_account_network_rules_default_action"></a> [azure\_storage\_account\_network\_rules\_default\_action](#input\_azure\_storage\_account\_network\_rules\_default\_action) | (Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow. | `string` | n/a | yes |
| <a name="input_azure_storage_account_network_rules_ip_rules"></a> [azure\_storage\_account\_network\_rules\_ip\_rules](#input\_azure\_storage\_account\_network\_rules\_ip\_rules) | (Required) Specifies the default action of allow or deny when no other rules match. Valid options are Deny or Allow. | `list(string)` | n/a | yes |
| <a name="input_azure_storage_account_replication_type"></a> [azure\_storage\_account\_replication\_type](#input\_azure\_storage\_account\_replication\_type) | (Required) Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS. Changing this forces a new resource to be created when types LRS, GRS and RAGRS are changed to ZRS, GZRS or RAGZRS and vice versa. | `string` | n/a | yes |
| <a name="input_azure_storage_account_tier"></a> [azure\_storage\_account\_tier](#input\_azure\_storage\_account\_tier) | (Required) Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the storage account. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_storage_account_id"></a> [storage\_account\_id](#output\_storage\_account\_id) | The ID of the storage account. |
