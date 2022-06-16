resource "azurerm_sentinel_automation_rule" "example" {
  name                       = "56094f72-ac3f-40e7-a0c0-47bd95f70336"
  log_analytics_workspace_id = azurerm_log_analytics_solution.sentinel.workspace_resource_id
  display_name               = "automation_rule1"
  order                      = 1
  action_incident {
    order  = 1
    status = "Active"
  }
}