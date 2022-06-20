data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}


module "SentinelAlertRuleAlertScheduled" {
  source = "./SentinelAlertRuleAlertScheduled"

    azurerm_log_analytics_solution_id = var.solution_id
    #azurerm_log_analytics_solution_id = data.azurerm_log_analytics_workspace.example.workspace_id
    alert_rule_name ="${var.prefix}-rulescheduled01"
}

