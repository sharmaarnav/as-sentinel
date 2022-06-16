resource "azurerm_sentinel_watchlist" "example" {
  name                       = "example-watchlist"
  log_analytics_workspace_id = azurerm_log_analytics_solution.example.workspace_resource_id
  display_name               = "example-wl"
  item_search_key            = "Key"
}