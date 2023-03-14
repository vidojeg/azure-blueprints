terraform {
  backend "remote" {
    organization = lookup(var.tf_cloud_organization, var.environment_code)
    workspaces {
      name = lookup(var.workspaces, var.environment_code)
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.47.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "00000000-0000-0000-0000-000000000000"
  tenant_id       = "11111111-1111-1111-1111-111111111111"
}