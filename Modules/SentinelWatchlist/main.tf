resource "azurerm_sentinel_watchlist" "example" {
  name                       = var.watchlist_name
  log_analytics_workspace_id = var.azurerm_log_analytics_solution_id
  display_name               = var.watchlist_name
  item_search_key            = "Key"
}

output "watchlist_id" {
  value = azurerm_sentinel_watchlist.example.id
}