locals {
  files = [for i in fileset("D:/test_terraform/Setting/config/team", "*.yaml") : yamldecode(file("D:/test_terraform/Setting/config/team/${i}"))]
}


module "team" {
  source   = "../../modules/team"
  count = length(local.files)

  data_team = local.files[count.index]
}