resource "azurerm_resource_group" "example" {
  name     = var.azurerm_resource_group_name
  location = var.location
}