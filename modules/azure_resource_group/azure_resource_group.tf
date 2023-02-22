##########################################################
####      Resource Group   ###############################
##########################################################
resource "azurerm_resource_group" "terraform_coe_resource_group_d01" {
  name     = var.azure_resource_group_name
  location = var.azure_resource_group_location
  tags     = var.tags
}
