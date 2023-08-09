locals {
  config = yamldecode(file("${path.module}/variables.yaml"))
}


module "team_repo" {
  source   = "../../modules/team_repository"
  for_each = local.config.team

  team_name  = each.key
  repository = each.value["repository"]
}
