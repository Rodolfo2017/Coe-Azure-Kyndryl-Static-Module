## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Module

<h2> azure_cosmosdb </h2> 

## Resources

| Name | Type |
|------|------|
| [azurerm_cosmosdb_account.coe_azure_cosmosdb_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cosmosdb_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_cosmosdb_account_capabilities_name_1"></a> [azure\_cosmosdb\_account\_capabilities\_name\_1](#input\_azure\_cosmosdb\_account\_capabilities\_name\_1) | (Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_capabilities_name_2"></a> [azure\_cosmosdb\_account\_capabilities\_name\_2](#input\_azure\_cosmosdb\_account\_capabilities\_name\_2) | (Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_capabilities_name_3"></a> [azure\_cosmosdb\_account\_capabilities\_name\_3](#input\_azure\_cosmosdb\_account\_capabilities\_name\_3) | (Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_capabilities_name_4"></a> [azure\_cosmosdb\_account\_capabilities\_name\_4](#input\_azure\_cosmosdb\_account\_capabilities\_name\_4) | (Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_consistency_level"></a> [azure\_cosmosdb\_account\_consistency\_level](#input\_azure\_cosmosdb\_account\_consistency\_level) | (Required) The Consistency Level to use for this CosmosDB Account - can be either BoundedStaleness, Eventual, Session, Strong or ConsistentPrefix. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_enable_automatic_failover"></a> [azure\_cosmosdb\_account\_enable\_automatic\_failover](#input\_azure\_cosmosdb\_account\_enable\_automatic\_failover) | (Optional) Enable automatic failover for this Cosmos DB account. | `bool` | n/a | no |
| <a name="input_azure_cosmosdb_account_geo_location_failover_priority_1"></a> [azure\_cosmosdb\_account\_geo\_location\_failover\_priority\_1](#input\_azure\_cosmosdb\_account\_geo\_location\_failover\_priority\_1) | (Required) The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority 0. | `number` | n/a | yes |
| <a name="input_azure_cosmosdb_account_geo_location_failover_priority_2"></a> [azure\_cosmosdb\_account\_geo\_location\_failover\_priority\_2](#input\_azure\_cosmosdb\_account\_geo\_location\_failover\_priority\_2) | (Required) The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority 0. | `number` | n/a | yes |
| <a name="input_azure_cosmosdb_account_geo_location_location_1"></a> [azure\_cosmosdb\_account\_geo\_location\_location\_1](#input\_azure\_cosmosdb\_account\_geo\_location\_location\_1) | (Required) The name of the Azure region to host replicated data. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_geo_location_location_2"></a> [azure\_cosmosdb\_account\_geo\_location\_location\_2](#input\_azure\_cosmosdb\_account\_geo\_location\_location\_2) | (Required) The name of the Azure region to host replicated data. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_kind"></a> [azure\_cosmosdb\_account\_kind](#input\_azure\_cosmosdb\_account\_kind) | (Optional) Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB, MongoDB and Parse. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created. | `string` | n/a | no |
| <a name="input_azure_cosmosdb_account_max_interval_in_seconds"></a> [azure\_cosmosdb\_account\_max\_interval\_in\_seconds](#input\_azure\_cosmosdb\_account\_max\_interval\_in\_seconds) | (Optional) When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is 5 - 86400 (1 day). Defaults to 5. Required when consistency\_level is set to BoundedStaleness. | `number` | n/a | no |
| <a name="input_azure_cosmosdb_account_max_staleness_prefix"></a> [azure\_cosmosdb\_account\_max\_staleness\_prefix](#input\_azure\_cosmosdb\_account\_max\_staleness\_prefix) | (Optional) When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is 10 – 2147483647. Defaults to 100. Required when consistency\_level is set to BoundedStaleness. | `number` | n/a | no |
| <a name="input_azure_cosmosdb_account_name"></a> [azure\_cosmosdb\_account\_name](#input\_azure\_cosmosdb\_account\_name) | (Required) Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_cosmosdb_account_offer_type"></a> [azure\_cosmosdb\_account\_offer\_type](#input\_azure\_cosmosdb\_account\_offer\_type) | (Required) Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to Standard. | `string` | n/a | yes |
| <a name="input_azure_resource_group_location"></a> [azure\_resource\_group\_location](#input\_azure\_resource\_group\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_azure_resource_group_name"></a> [azure\_resource\_group\_name](#input\_azure\_resource\_group\_name) | (Required) The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azure_cosmosdb_account_connection_strings"></a> [azure\_cosmosdb\_account\_connection\_strings](#output\_azure\_cosmosdb\_account\_connection\_strings) | A list of connection strings available for this CosmosDB account. |
| <a name="output_azure_cosmosdb_account_endpoint"></a> [azure\_cosmosdb\_account\_endpoint](#output\_azure\_cosmosdb\_account\_endpoint) | The endpoint used to connect to the CosmosDB account. |
| <a name="output_azure_cosmosdb_account_id"></a> [azure\_cosmosdb\_account\_id](#output\_azure\_cosmosdb\_account\_id) | The CosmosDB Account ID. |
