resource "azurerm_sentinel_watchlist_item" "example" {
  name         = "${var.prefix}-watchlist-item"
  watchlist_id = azurerm_sentinel_watchlist.example.id
  properties = {
    k1 = "v1"
    k2 = "v2"
  }
}