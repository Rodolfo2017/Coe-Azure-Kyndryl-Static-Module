## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Module

<h2> azure_container_registry </h2>

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.coe_azure_container_registry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_container_registry_admin_enabled"></a> [azure\_container\_registry\_admin\_enabled](#input\_azure\_container\_registry\_admin\_enabled) | (Optional) Specifies whether the admin user is enabled. Defaults to false. | `bool` | n/a | no |
| <a name="input_azure_container_registry_georeplication_location_1"></a> [azure\_container\_registry\_georeplication\_location\_1](#input\_azure\_container\_registry\_georeplication\_location\_1) | (Required) A location where the container registry should be geo-replicated. | `string` | n/a | yes |
| <a name="input_azure_container_registry_georeplication_zone_redundancy_enabled_1"></a> [azure\_container\_registry\_georeplication\_zone\_redundancy\_enabled\_1](#input\_azure\_container\_registry\_georeplication\_zone\_redundancy\_enabled\_1) | (Optional) Whether zone redundancy is enabled for this Container Registry? Changing this forces a new resource to be created. Defaults to false. | `bool` | n/a | no |
| <a name="input_azure_container_registry_name"></a> [azure\_container\_registry\_name](#input\_azure\_container\_registry\_name) | (Required) Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_container_registry_sku"></a> [azure\_container\_registry\_sku](#input\_azure\_container\_registry\_sku) | (Required) The SKU name of the container registry. Possible values are Basic, Standard and Premium. | `string` | n/a | yes |
| <a name="input_azure_resource_group_location"></a> [azure\_resource\_group\_location](#input\_azure\_resource\_group\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | (Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to assign to the Azure Container Registry. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_container_registry_login_server"></a> [azure\_container\_registry\_](#output\_azure\_container\_registry\_) | The URL that can be used to log into the container registry. |
| <a name="output_azure_container_registry_id"></a> [azure\_container\_registry\_id](#output\_azure\_container\_registry\_id) | The ID of the Container Registry. |
