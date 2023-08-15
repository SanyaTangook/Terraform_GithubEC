locals {
  files = yamldecode(file("D:/test_terraform/Setting-test/config/team/role"))
}

module "team_member" {
  source = "../../modules/team_member"
  count  = length(local.files)

  data_team_member = local.files[count.index]
}

