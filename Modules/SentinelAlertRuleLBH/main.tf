resource "azurerm_sentinel_alert_rule_machine_learning_behavior_analytics" "example" {
  name                       = "${var.prefix}-ml-alert-rule"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
  alert_rule_template_guid   = "737a2ce1-70a3-4968-9e90-3e6aca836abf"
}