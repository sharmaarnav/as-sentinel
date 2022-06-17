resource "azurerm_sentinel_alert_rule_fusion" "example" {
  name                       = var.fusion_rule_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
  alert_rule_template_guid   = "f71aba3d-28fb-450b-b192-4e76a83015c8"
}