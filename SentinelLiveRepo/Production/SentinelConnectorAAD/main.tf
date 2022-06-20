data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelConnectorAAD" {
  source = "./SentinelConnectorAAD"

    count = var.required_license_enabled ? 1 : 0
    connector_name = "${var.prefix}-aad"
    azurerm_log_analytics_solution_id = data.azurerm_log_analytics_workspace.example.id
}