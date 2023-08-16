locals {
  files = [for i in fileset("../../config/role", "*.yaml") : yamldecode(file("../../config/role/${i}"))]
  teams = flatten([
    for file in local.files : [
      for team_name, team_repo in file.team : {
        name = team_name
        repositories = team_repo.repository
      }
    ]
  ])
}

module "team_repo" {
  source   = "../../modules/team_repository"
  for_each = { for team in local.teams : team.name => team.repositories }

  team_name  = each.key
  repository = each.value
}
