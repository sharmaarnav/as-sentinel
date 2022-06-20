data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}


module "SentinelWatchlist" {
  source = "./SentinelWatchlist"

  watchlist_name = "${var.prefix}-watchlist"
  azurerm_log_analytics_solution_id = data.azurerm_log_analytics_workspace.example.id
}
