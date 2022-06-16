module "ResourceGroup" {
  source = "./ResourceGroup"

  azurerm_resource_group_name      = "${var.prefix}-rg"
  location                     =  var.location

}