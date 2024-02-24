terraform {
  required_version = ">=0.12"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
#  # Update this block with the location of your terraform state file
    backend "azurerm" {
      resource_group_name  = "rg-terraform-github-actions-state"
      storage_account_name = "terraformgithubactions004748"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
      use_oidc             = true
   }
  }
}

provider "azurerm" {
  features {}
}
