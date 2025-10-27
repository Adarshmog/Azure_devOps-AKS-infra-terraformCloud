terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.49.0"
    }
  }

  backend "remote" {
    organization = "azure-devops-infra"

    workspaces {
      name = "Azure_devOps-AKS-infra-terraformCloud"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "aks_rg" {
  name     = var.resource_group_name
  location = var.location
}

module "aks" {
  source              = "./modules/aks"
  prefix              = var.prefix
  resource_group_name = azurerm_resource_group.aks_rg.name
  location            = azurerm_resource_group.aks_rg.location
  node_count          = var.node_count
  node_vm_size        = var.node_vm_size
  kubernetes_version  = var.kubernetes_version
}


