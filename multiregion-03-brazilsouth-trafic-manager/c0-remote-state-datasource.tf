# Project-1: Brazil Datasource
data "terraform_remote_state" "project1_brazilsouth" {
  backend = "azurerm"
  config = {
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "frozzatfstate"
    container_name        = "tfstatefiles"
    key                   = "region-1-brazilsouth-terraform.tfstate"
  }
}

# Project-2: East US2 Datasource
data "terraform_remote_state" "project2_eastus2" {
  backend = "azurerm"
  config = {
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "frozzatfstate"
    container_name        = "tfstatefiles"
    key                   = "region-2-eastus2-terraform.tfstate"
  }
}

/* 
1. Project-1: Web LB Public IP Address
data.terraform_remote_state.project1_brazilsouth.outputs.web_lb_public_ip_address_id
1. Project-2: Web LB Public IP Address
data.terraform_remote_state.project2_eastus2.outputs.web_lb_public_ip_address_id
*/