resource "azurerm_sentinel_alert_rule_ms_security_incident" "example" {
  name                       = "example-ms-security-incident-alert-rule"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
  product_filter             = "Microsoft Cloud App Security"
  display_name               = "example rule"
  severity_filter            = ["High"]
}