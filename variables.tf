variable "prefix" {
  description = "Prefix used for resource naming..."
  type        = string
}

variable "location" {
  description = "Azure region where resources will be deployed."
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the default node pool."
  type        = number
}

variable "node_vm_size" {
  description = "VM size for AKS nodes."
  type        = string
}

variable "kubernetes_version" {
  description = "AKS Kubernetes version."
  type        = string
}
