include "root" {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../ResourceGroup", "../LogAnalyticsWorkspace", "../SentinelWatchlist"]
}

dependency "LogAnalyticsSolution" {
  config_path = "../LogAnalyticsSolution"
}


inputs = {
  solution_id = dependency.LogAnalyticsSolution.outputs.solution_id
}