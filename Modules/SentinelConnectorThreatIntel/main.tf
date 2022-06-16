resource "azurerm_sentinel_data_connector_threat_intelligence" "example" {
  name                       = "${var.prefix}-threat-intel"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
}