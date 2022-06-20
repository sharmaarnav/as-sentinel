resource "azurerm_sentinel_alert_rule_scheduled" "example" {
  name                       = var.alert_rule_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
  display_name               = var.alert_rule_name
  severity                   = "High"
  query                      = <<QUERY
AzureActivity |
  where OperationName == "Create or Update Virtual Machine" or OperationName =="Create Deployment" |
  where ActivityStatus == "Succeeded" |
  make-series dcount(ResourceId) default=0 on EventSubmissionTimestamp in range(ago(7d), now(), 1d) by Caller
QUERY
}

