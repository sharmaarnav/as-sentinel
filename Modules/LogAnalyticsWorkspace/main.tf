resource "azurerm_log_analytics_workspace" "example" {
  name                = "example-workspace"
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"
}