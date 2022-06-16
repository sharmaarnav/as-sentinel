data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}

module "LogAnalyticsWorkspace" {
  source = "./LogAnalyticsWorkspace"
  
  azurerm_log_analytics_workspace_name    = "${var.prefix}-workspace-as01"
  location                                = var.location
  resource_group_name                     = data.azurerm_resource_group.examplerg.name

}