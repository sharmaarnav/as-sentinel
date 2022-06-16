resource "azurerm_log_analytics_workspace" "example" {
  name                = "${var.prefix}-workspace01"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
}