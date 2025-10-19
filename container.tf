# Azure Container Instance (Public IP)
resource "azurerm_container_group" "aci" {
  name                = "${var.project}-aci"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  os_type        = "Linux"
  ip_address_type = "Public"               # <-- remplace l'ancien bloc ip_address
  dns_name_label  = var.dns_label          # doit être unique globalement

  container {
    name   = "app"
    image  = var.container_image           # ex: nginx:latest
    cpu    = 0.5
    memory = 1.0

    ports {
      port     = var.container_port        # ex: 80
      protocol = "TCP"
    }
  }

  tags = var.tags
}
