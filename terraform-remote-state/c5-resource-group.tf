# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "rg" {
    name = "terraform-storage-rg2"
    location = var.resource_group_location
    tags = local.common_tags
}