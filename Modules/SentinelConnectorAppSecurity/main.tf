resource "azurerm_sentinel_data_connector_microsoft_cloud_app_security" "example" {
  name                       = var.connector_app_security_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
}

