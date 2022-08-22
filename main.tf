terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.19.0"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "main" {
  name     = "rg-${local.resource_suffix}"
  location = var.location.name
  tags = {
    project     = var.project
    environment = var.environment
  }

  lifecycle {}
}

# data "terraform_remote_state" "main" {
#   backend = "azurerm"
#   config = {
#     tenant_id            = var.remote_state_tenant_id
#     subscription_id      = var.remote_state_subscription_id
#     resource_group_name  = var.remote_state_resource_group_name
#     storage_account_name = var.remote_state_storage_account_name
#     container_name       = var.remote_state_container_name
#     key                  = var.remote_state_key
#   }
# }
