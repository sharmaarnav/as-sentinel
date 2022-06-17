data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}

data "azurerm_log_analytics_solution" "example" {
  name = "${var.prefix}_solutionas01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelAlertRuleAlertScheduled" {
  source = "./SentinelAlertRuleAlertScheduled"

azurerm_log_analytics_solution_id = data.azurerm_log_analytics_solution.example.id

}