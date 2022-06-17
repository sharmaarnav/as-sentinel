data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}

data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelAlertRuleFusion" {
  source = "./SentinelAlertRuleFusion"

  azurerm_log_analytics_solution_id = "/subscriptions/${var.subscription_id}/resourceGroups/${data.azurerm_resource_group.examplerg.name}/providers/Microsoft.OperationsManagement/solutions/SecurityInsights(${var.prefix}-workspace-as01)"
  fusion_rule_name = "${var.prefix}fusion-alert-rule"

}