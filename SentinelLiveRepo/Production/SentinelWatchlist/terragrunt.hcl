include "root" {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../ResourceGroup", "../LogAnalyticsWorkspace"]
}

dependency "LogAnalyticsSolution" {
  config_path = "../LogAnalyticsSolution"
}
