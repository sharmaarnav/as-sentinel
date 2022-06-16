module "ResourceGroup" {
  source = "./ResourceGroup"

  prefix      = "${var.prefix}-rg"
  location    =  var.location

}