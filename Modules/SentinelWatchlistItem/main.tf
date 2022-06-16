resource "azurerm_sentinel_watchlist_item" "example" {
  name         = "${var.prefix}-watchlist-item"
  watchlist_id = var.azurerm_sentinel_watchlist_id
  properties = {
    k1 = "v1"
    k2 = "v2"
  }
}