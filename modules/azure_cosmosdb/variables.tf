variable "azure_cosmosdb_account_name" {
  description = "(Required) Specifies the name of the CosmosDB Account. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_name" {
  description = "(Required) The name of the resource group in which the CosmosDB Account is created. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_resource_group_location" {
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_cosmosdb_account_offer_type" {
  description = "(Required) Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to Standard."
  type        = string
}

variable "azure_cosmosdb_account_kind" {
  description = "(Optional) Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB, MongoDB and Parse. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created."
  type        = string
}

variable "azure_cosmosdb_account_enable_automatic_failover" {
  description = "(Optional) Enable automatic failover for this Cosmos DB account."
  type        = bool
}

variable "azure_cosmosdb_account_capabilities_name_1" {
  description = "(Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL."
  type        = string
}

variable "azure_cosmosdb_account_capabilities_name_2" {
  description = "(Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL."
  type        = string
}

variable "azure_cosmosdb_account_capabilities_name_3" {
  description = "(Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL."
  type        = string
}

variable "azure_cosmosdb_account_capabilities_name_4" {
  description = "(Required) The capability to enable - Possible values are AllowSelfServeUpgradeToMongo36, DisableRateLimitingResponses, EnableAggregationPipeline, EnableCassandra, EnableGremlin, EnableMongo, EnableMongo16MBDocumentSupport, EnableMongoRetryableWrites, EnableMongoRoleBasedAccessControl, EnableServerless, EnableTable, EnableUniqueCompoundNestedDocs, MongoDBv3.4 and mongoEnableDocLevelTTL."
  type        = string
}

variable "azure_cosmosdb_account_consistency_level" {
  description = "(Required) The Consistency Level to use for this CosmosDB Account - can be either BoundedStaleness, Eventual, Session, Strong or ConsistentPrefix."
  type        = string
}

variable "azure_cosmosdb_account_max_interval_in_seconds" {
  description = "(Optional) When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. The accepted range for this value is 5 - 86400 (1 day). Defaults to 5. Required when consistency_level is set to BoundedStaleness."
  type        = number
}

variable "azure_cosmosdb_account_max_staleness_prefix" {
  description = "(Optional) When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. The accepted range for this value is 10 – 2147483647. Defaults to 100. Required when consistency_level is set to BoundedStaleness."
  type        = number
}

variable "azure_cosmosdb_account_geo_location_location_1" {
  description = "(Required) The name of the Azure region to host replicated data."
  type        = string
}

variable "azure_cosmosdb_account_geo_location_failover_priority_1" {
  description = "(Required) The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority 0."
  type        = number
}

variable "azure_cosmosdb_account_geo_location_location_2" {
  description = "(Required) The name of the Azure region to host replicated data."
  type        = string
}

variable "azure_cosmosdb_account_geo_location_failover_priority_2" {
  description = "(Required) The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. Changing this causes the location to be re-provisioned and cannot be changed for the location with failover priority 0."
  type        = number
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
