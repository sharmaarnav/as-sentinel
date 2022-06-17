include "root" {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../ResourceGroup", "../LogAnalyticsWorkspace", "../LogAnalyticsSolution" ]
}

inputs = {
  solution_id = dependency.LogAnalyticsSolution.outputs.solution_id
}