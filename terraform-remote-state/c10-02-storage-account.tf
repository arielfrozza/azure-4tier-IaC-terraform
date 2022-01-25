# Resource-1: Create Azure Storage account
resource "azurerm_storage_account" "storage_account" {
  name                = "frozzatfstate2"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location

  account_tier        = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  account_kind        = var.storage_account_kind
}

# Resource-2: httpd files Container
resource "azurerm_storage_container" "state_files_container" {
  name = "tfstatefiles"
  storage_account_name = azurerm_storage_account.storage_account.name
  container_access_type = "private"
}

