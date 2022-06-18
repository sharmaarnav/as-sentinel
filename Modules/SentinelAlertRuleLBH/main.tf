resource "azurerm_sentinel_alert_rule_machine_learning_behavior_analytics" "example" {
  name                       = var.ml_rule
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
  alert_rule_template_guid   = "737a2ce1-70a3-4968-9e90-3e6aca836abf"
}