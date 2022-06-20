data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}


data "azurerm_log_analytics_workspace" "example" {
  name = "${var.prefix}-workspace-as01"
  resource_group_name = data.azurerm_resource_group.examplerg.name
}

module "SentinelWatchlistItem" {
  source = "./SentinelWatchlistItem"

  watchlist_item_name = "${var.prefix}-watchlist-item"
  azurerm_log_analytics_solution_id = data.azurerm_log_analytics_workspace.example.id
  azurerm_sentinel_watchlist_id = var.watchlist_id
}