include "root" {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../ResourceGroup", "../LogAnalyticsWorkspace"]
}

dependency "SentinelWatchlist" {
  config_path = "../SentinelWatchlist"
}


inputs = {
  watchlist_id = dependency.SentinelWatchlist.outputs.watchlist_id
}