data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}

data "azurerm_log_analytics_solution" "example" {
  name = "${var.prefix}_solutionas01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelAlertRuleFusion" {
  source = "./SentinelAlertRuleFusion"

  azurerm_log_analytics_solution_id = data.azurerm_log_analytics_solution.example.id
  fusion_rule_name = "${var.prefix}fusion-alert-rule"

}