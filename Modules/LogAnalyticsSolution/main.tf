resource "azurerm_log_analytics_solution" "example" {
  solution_name         = "SecurityInsights"
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = var.azurerm_log_analytics_workspace_id
  workspace_name        = var.azurerm_log_analytics_workspace_name

  plan {
    #name = var.azurerm_log_analytics_solution_name
    publisher = "Microsoft"
    product   = "OMSGallery/SecurityInsights"
  }
}

output "solution_id" {
  value = azurerm_log_analytics_solution.example.workspace_resource_id
}