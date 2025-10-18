variable "ARM_CLIENT_ID" {
  description = "Azure client ID"
  type        = string
  sensitive   = true
}

variable "ARM_CLIENT_SECRET" {
  description = "Azure client secret"
  type        = string
  sensitive   = true
}

variable "ARM_SUBSCRIPTION_ID" {
  description = "Azure subscription ID"
  type        = string
}

variable "ARM_TENANT_ID" {
  description = "Azure tenant ID"
  type        = string
}
