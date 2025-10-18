output "resource_group_name" {
  description = "Nom du groupe de ressources créé"
  value       = azurerm_resource_group.rg.name
}

output "resource_group_location" {
  description = "Région Azure du groupe de ressources"
  value       = azurerm_resource_group.rg.location
}
