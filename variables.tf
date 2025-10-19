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

variable "location" {
  description = "Azure region"
  type        = string
}

# Tags appliqués aux ressources
variable "tags" {
  description = "Common tags"
  type        = map(string)
  default     = {}
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "subnets" {
  description = "Map of subnet name => CIDR"
  type        = map(string)
}
