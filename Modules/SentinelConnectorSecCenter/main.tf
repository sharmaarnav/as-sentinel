resource "azurerm_sentinel_data_connector_azure_security_center" "example" {
  name                       = var.sec_center_connector_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
}

