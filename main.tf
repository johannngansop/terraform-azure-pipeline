terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  cloud {
    organization = "Johann_project" 
    workspaces {
      name = "terraform-azure-pipeline" 
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-test"
  location = "East US"
}
