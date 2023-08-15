locals {
  files = [for i in fileset("D:/test_terraform/Setting-test/config/role", "*.yaml") : yamldecode(file("D:/test_terraform/Setting-test/config/role/${i}"))]
}

module "team_repo" {
  source   = "../../modules/team_repository"
  for_each = local.files.team

  team_name  = each.key
  repository = each.value["repository"]
}
