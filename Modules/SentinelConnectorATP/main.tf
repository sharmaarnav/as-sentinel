resource "azurerm_sentinel_data_connector_azure_advanced_threat_protection" "example" {
  name                       = var.atp_connector_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
}


