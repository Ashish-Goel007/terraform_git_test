terraform {
  backend "azurerm" {
    resource_group_name  = "state"
    storage_account_name = "strg04012024ash"
    container_name       = "tfstate"
    key                  = "devpipelines.terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  required_version = ">=1.0.0"
}

provider "azurerm" {
    features {}

  
}