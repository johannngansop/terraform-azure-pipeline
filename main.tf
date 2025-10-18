terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }

  cloud {
    organization = "Johann_project"  # ton nom d'organisation Terraform Cloud
    workspaces {
      name = "terraform-azure-pipeline"  # ton workspace Terraform Cloud
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
