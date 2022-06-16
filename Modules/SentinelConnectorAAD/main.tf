resource "azurerm_sentinel_data_connector_azure_active_directory" "example" {
  name                       = "${var.prefix}-aad"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
}