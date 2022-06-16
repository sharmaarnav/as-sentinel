resource "azurerm_sentinel_data_connector_microsoft_defender_advanced_threat_protection" "example" {
  name                       = "${var.prefix}-defender-adv-atp"
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
}