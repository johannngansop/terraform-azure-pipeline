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

# VM Configuration
variable "vm_name" {
  description = "Nom de la machine virtuelle"
  type        = string
  default     = "vm-johann"
}

variable "vm_size" {
  description = "Taille de la VM"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Nom d'utilisateur administrateur de la VM"
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "Mot de passe administrateur"
  type        = string
  sensitive   = true
  default     = "Johann@12345"  # (exemple, tu peux le modifier)
}


variable "subnets" {
  description = "Map of subnet name => CIDR"
  type        = map(string)
}
variable "container_name" {
  description = "Nom du container / du groupe ACI"
  type        = string
  default     = "cont-johann"
}

variable "container_image" {
  type        = string
  description = "Docker image"
  default     = "nginx:latest"
}

variable "container_port" {
  type        = number
  description = "Container port to expose"
  default     = 80
}

variable "container_cpu" {
  description = "CPU pour le container"
  type        = number
  default     = 1
}

variable "container_memory" {
  description = "Mémoire (GB) pour le container"
  type        = number
  default     = 1.5
}

variable "dns_label" {
  type        = string
  description = "Globally-unique DNS label for the ACI (subdomain)"
}

variable "container_env" {
  description = "Variables d'environnement du container"
  type        = map(string)
  default     = {}
}

