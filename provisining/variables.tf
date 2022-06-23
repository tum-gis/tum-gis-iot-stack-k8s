# General ---------------------------------------------------------------------

variable "location" {
  type        = string
  default     = "West Europe"
  description = "Location where the infrastructure shall be deployed."
}

variable "resource_group_name" {
  type        = string
  default     = "rg-sta-k8s"
  description = "Name of the resource group in which all services shall be started."
}

# k8s -------------------------------------------------------------------------
variable "k8s_service_name" {
  type        = string
  default     = "sta-k8s"
  description = "Name of the Azure k8s service."
}

variable "k8s_default_node_count" {
  type        = number
  default     = 1
  description = "Size of the default node pool."
}

variable "k8s_database_node_count" {
  type        = number
  default     = 1
  description = "Size of the database node pool."
}

variable "use_azure_ingress_controller" {
  default     = false
  type        = bool
  description = "Use Azure build in ingress controller"
}

# Cost control and budgets ----------------------------------------------------
variable "contact_emails" {
  type    = list(string)
  default = ["user@example.de"]
}
