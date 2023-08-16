locals {
  files = [for i in fileset("../../config/team", "*.yaml") : yamldecode(file("../../config/team/${i}"))]
  teams = flatten([
    for file in local.files : [
      for team_name, team_member in file : {
        name    = team_name
        members = team_member.member
      }
    ]
  ])
}

data "github_team" "team_id" {
  for_each  = { for team in local.teams : team.name => team.members }
  slug = each.key
}

module "team_member" {
  source    = "../../modules/team_member"
  for_each  = { for team in local.teams : team.name => team.members }
  team_name = data.github_team.team_id[each.key].id
  member    = each.value
  # github_org_token = var.github_org_token
  # github_org_name = var.github_org_name
}