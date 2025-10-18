variable "resource_group_name" {
  description = "Nom du groupe de ressources à créer dans Azure"
  type        = string
  default     = "rg-terraform-test"
}

variable "location" {
  description = "Région Azure où créer les ressources"
  type        = string
  default     = "East US"
}
