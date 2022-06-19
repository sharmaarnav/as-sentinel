resource "azurerm_sentinel_data_connector_office_365" "example" {
  name                       = var.o365_connector_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
}

