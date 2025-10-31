terraform {
  required_version = ">=1.3.0"

  required_providers {

    random = {
      source  = "hashicorp/random"
      version = ">= 3.1.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.43.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id            = "0cfe2870-d256-4119-b0a3-16293ac11bdc"
  skip_provider_registration = true
}

# resource "azurerm_resource_group" "rg" {
#   name     = "1-a982db2d-playground-sandbox"
#   location = "eastus"
# }
