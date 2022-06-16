resource "azurerm_sentinel_data_connector_azure_security_center" "example" {
  name                       = "${var.prefix}-azure-sec-center"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
}