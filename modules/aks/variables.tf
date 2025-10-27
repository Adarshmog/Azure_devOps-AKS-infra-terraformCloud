variable "prefix" {
  type        = string
  description = "Prefix used for resource naming."
}

variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group."
}

variable "location" {
  type        = string
  description = "Azure region where resources will be deployed."
}

variable "node_count" {
  type        = number
  description = "Number of nodes in the default node pool."
}

variable "node_vm_size" {
  type        = string
  description = "VM size for AKS nodes."
}

variable "kubernetes_version" {
  type        = string
  description = "AKS Kubernetes version."
}

