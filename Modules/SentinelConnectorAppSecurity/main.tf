resource "azurerm_sentinel_data_connector_microsoft_cloud_app_security" "example" {
  name                       = "example"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
}