# Azure Container Instances : déploiement d'un conteneur public (ex: nginx)
resource "azurerm_container_group" "aci" {
  name                = var.container_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  os_type = "Linux"

  # Option VNet (facultatif) : attacher à votre subnet "web" créé plus tôt
  # Si tu veux un accès public simple, commente la ligne "subnet_ids"
  # et garde ip_address { type = "Public" } (ci-dessous)
  # subnet_ids = [azurerm_subnet.subnets["web"].id]

  ip_address {
    type            = "Public"
    ports {
      port     = var.container_port
      protocol = "TCP"
    }
    # Attention : label DNS globalement unique
    dns_name_label = var.dns_name_label
  }

  container {
    name   = var.container_name
    image  = var.container_image           # ex: "nginx:latest"
    cpu    = var.container_cpu
    memory = var.container_memory

    ports {
      port = var.container_port
    }

    # Variables d'env (map) -> reste facultatif
    environment_variables = var.container_env
  }

  tags = var.tags
}
