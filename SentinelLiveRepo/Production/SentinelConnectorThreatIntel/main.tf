data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelConnectorThreatIntel" {
  source = "./SentinelConnectorThreatIntel"

  threat_intel_center_connector_name = "${var.prefix}-threat-intel"
  azurerm_log_analytics_solution_id = data.azurerm_log_analytics_workspace.example.id
}