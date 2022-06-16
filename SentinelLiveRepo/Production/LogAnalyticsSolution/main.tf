data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_solution" "example" {
  name = var.azurerm_log_analytics_workspace_name
  resource_group_name = data.azurerm_resource_group.examplerg.name
}


module "LogAnalyticsSolution" {
  source = "./LogAnalyticsSolution"
  
  
  azurerm_log_analytics_solution_name = 
  location = 
  resource_group_name = 
  azurerm_log_analytics_workspace_id = 
  azurerm_log_analytics_workspace_name = 
}