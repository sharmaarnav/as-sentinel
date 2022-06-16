resource "azurerm_sentinel_watchlist" "example" {
  name                       = "${var.prefix}-watchlist"
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
  display_name               = "${var.prefix}-watchlist"
  item_search_key            = "Key"
}