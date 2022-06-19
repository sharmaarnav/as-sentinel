resource "azurerm_sentinel_watchlist_item" "example" {
  name         = var.watchlist_item_name
  watchlist_id = var.azurerm_sentinel_watchlist_id
  properties = {
    k1 = "v1"
    k2 = "v2"
  }
}

