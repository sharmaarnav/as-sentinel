resource "azurerm_sentinel_alert_rule_ms_security_incident" "example" {
  name                       = var.security_incident_rule_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
  product_filter             = "Microsoft Cloud App Security"
  display_name               = var.security_incident_rule_name
  severity_filter            = ["High"]
}