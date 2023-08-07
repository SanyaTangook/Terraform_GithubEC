locals {
  config = yamldecode(file("${path.module}/variables.yaml"))
}


module "team" {
  source   = "../../modules/team"
  for_each = local.config.team

  team_name   = each.key
  description = each.value["description"]
  parent_team = each.value["parent_team"]
  closed      = each.value["closed"]
}