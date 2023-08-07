locals {
  config = yamldecode(file("${path.module}/variables.yaml"))
}

module "team_member" {
  source = "../../modules/team_member"

  for_each = local.config.user
  
}