terraform {
  cloud{
    organization = "azure-devops-infra"         
    workspaces {
      name = "Azure_devOps-AKS-infra-terraformCloud"              
    }
  }
}

