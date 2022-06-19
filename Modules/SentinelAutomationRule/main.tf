resource "azurerm_sentinel_automation_rule" "example" {
  name                       = var.automation_rule_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
  display_name               = var.automation_rule_name
  order                      = 1
  action_incident {
    order  = 1
    status = "Active"
  }
}