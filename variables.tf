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
variable "vnet_name" {
  description = "Nom du VNet"
  type        = string
  default     = "vnet-terraform"
}

variable "vnet_address_space" {
  description = "Address space du VNet"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnets" {
  description = "Subnets du VNet (nom => CIDR)"
  type        = map(string)
  default = {
    "snet-web" = "10.10.1.0/24"
    "snet-app" = "10.10.2.0/24"
  }
}
