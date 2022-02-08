# Terraform Block
terraform {
#  required_version = ">=1.0.11"
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
#      version = ">=2.88.1"
      version = ">=2.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">=3.1.0"
    }
    null = {
      source = "hashicorp/null"
      version = ">=3.0"
    }
  }
  # Terraform State Storage to Azure Storage Container
  backend "azurerm" {
    resource_group_name   = "terraform-storage-rg"
    storage_account_name  = "frozzatfstate"
    container_name        = "tfstatefiles"
    key                   = "region-2-eastus2-terraform.tfstate"
  }
}

# Provider Block

provider "azurerm" {
  features {}
}
