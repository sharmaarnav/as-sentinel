resource "azurerm_log_analytics_workspace" "example" {
  name                = var.azurerm_log_analytics_workspace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}