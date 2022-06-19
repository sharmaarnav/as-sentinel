resource "azurerm_sentinel_data_connector_azure_active_directory" "example" {
  name                       = var.connector_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
}