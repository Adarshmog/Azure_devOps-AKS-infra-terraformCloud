terraform {
  cloud{
    organization = "azure-devops-infra"         
    workspaces {
      name = "devops-infra"              
    }
  }
}

