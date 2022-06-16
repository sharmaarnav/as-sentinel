data "azurerm_resource_group" "examplerg" {
  name     = "${var.prefix}-rg"
}

module "appservice" {
  source = "./AppServicePlan"
  
  app_service_plan    = "${var.prefix}-appserviceplan"
  location            = var.location
  resource_group_name = data.azurerm_resource_group.examplerg.name

}