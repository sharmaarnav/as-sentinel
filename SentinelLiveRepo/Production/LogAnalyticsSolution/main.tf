data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}


module "LogAnalyticsSolution" {
  source = "./LogAnalyticsSolution"
  
  
  azurerm_log_analytics_solution_name = "${var.prefix}-solution-as01"
  location = var.location
  resource_group_name = data.azurerm_resource_group.examplerg.name
  azurerm_log_analytics_workspace_id = data.azurerm_log_analytics_workspace.example.id
  azurerm_log_analytics_workspace_name = data.azurerm_log_analytics_workspace.example.name
}