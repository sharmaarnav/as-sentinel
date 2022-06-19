data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelConnectorATP" {
  source = "./SentinelConnectorATP"

  atp_connector_name = "${var.prefix}-adv-atp"
  azurerm_log_analytics_solution_id = data.azurerm_log_analytics_workspace.example.id
}