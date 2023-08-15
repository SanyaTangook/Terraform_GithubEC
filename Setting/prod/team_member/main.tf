locals {
  files = [for i in fileset("D:/test_terraform/Setting/config/team", "*.yaml") : yamldecode(file("D:/test_terraform/Setting/config/team/${i}"))]
}


module "team_member" {
  source = "../../modules/team_member"
  count  = length(local.files)

  data_team_member = local.files[count.index]
}

