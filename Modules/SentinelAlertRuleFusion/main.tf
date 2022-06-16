resource "azurerm_sentinel_alert_rule_fusion" "example" {
  name                       = "example-fusion-alert-rule"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
  alert_rule_template_guid   = "f71aba3d-28fb-450b-b192-4e76a83015c8"
}