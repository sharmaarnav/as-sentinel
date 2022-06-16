module "ResourceGroup" {
  source = "./ResourceGroup"

  prefix      = "${var.prefix}"
  location    =  var.location

}