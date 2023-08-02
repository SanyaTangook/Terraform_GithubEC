locals {
  config = yamldecode(file("${path.module}/variables.yaml"))
}


# module "repository" {
#   source   = "../../modules/repository"
#   for_each = local.config.repository

#   repository                      = each.key
#   public                          = local.config.repo.public
#   auto_init                       = local.config.repo.auto_init
#   branch                          = each.value["branch"]
#   branch_protection               = each.value["branch_protection"]
#   required_status_checks          = local.config.branch_protection.required_status_checks
#   dismiss_stale_reviews           = local.config.branch_protection.dismiss_stale_reviews
#   require_code_owner_reviews      = local.config.branch_protection.require_code_owner_reviews
#   require_signed_commits          = local.config.branch_protection.require_signed_commits
#   required_approving_review_count = local.config.branch_protection.required_approving_review_count
# }

module "team" {
  source   = "../../modules/team"
  for_each = local.config.team

  team_name   = each.key
  description = "test"
  parent_team = each.value["parent_team"]
  member      = local.config.user
  closed      = each.value["closed"]
}

# module "team_repo" {
#   depends_on = [ module.team ]
#   source   = "../modules/team_repository"
#   for_each = local.config.team

#   team_name  = each.key
#   repository = each.value["repository"]
# }
