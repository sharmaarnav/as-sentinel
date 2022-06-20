data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelAutomationRule" {
  source = "./SentinelAutomationRule"
  
  automation_rule_name = "56094f72-ac3f-40e7-a0c0-47bd95f70336"
  azurerm_log_analytics_solution_id = data.azurerm_log_analytics_workspace.example.id
}


