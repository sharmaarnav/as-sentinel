resource "azurerm_sentinel_data_connector_threat_intelligence" "example" {
  name                       = var.threat_intel_center_connector_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
}

