data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}

data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelAlertRuleAlertScheduled" {
  source = "./SentinelAlertRuleAlertScheduled"

    azurerm_log_analytics_solution_id = "/subscriptions/${var.subscription_id}/resourceGroups/${data.azurerm_resource_group.examplerg.name}/providers/Microsoft.OperationsManagement/solutions/SecurityInsights(${var.prefix}_solutionas01)"
    alert_rule_name ="${var.prefix}-rulescheduled01"
}

# data.azurerm_log_analytics_workspace.example.workspace_id
#/subscriptions/b83ba8f2-f3e4-4144-bd58-8ea3710e139a/resourceGroups/production01-rg/providers/Microsoft.OperationsManagement/solutions/SecurityInsights(production01-workspace-as01)

#"/subscriptions/${local.subscription_id}/resourceGroups/${data.azurerm_resource_group.examplerg.name}/providers/Microsoft.OperationsManagement/solutions/SecurityInsights(${data.azurerm_log_analytics_workspace.name})"
#terraform import azurerm_log_analytics_solution.solution1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.OperationsManagement/solutions/solution1