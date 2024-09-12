#
# Creates a container registry on Azure so that you can publish your Docker images.
#
resource "azurerm_container_registry" "container_registry" {
  name                = "sit722acr"
  resource_group_name = azurerm_resource_group.librarypart5.name
  location            = "australiaeast"
  admin_enabled       = true
  sku                 = "Basic"
}

output "registry_hostname" {
  value = azurerm_container_registry.container_registry.login_server
}

output "registry_un" {
  value = azurerm_container_registry.container_registry.admin_username
}

output "registry_pw" {
  value = azurerm_container_registry.container_registry.admin_password
  sensitive = true
}
