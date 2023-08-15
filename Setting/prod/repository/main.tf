locals {
  file = yamldecode(file("D:/test_terraform/Setting-test/config/repository/repository.yaml"))
}
module "repository" {
  source   = "../../modules/repository"
  for_each = local.file.repository

  repository                      = each.key
  public                          = local.config.repo.public
  auto_init                       = local.config.repo.auto_init
  branch                          = length(each.value["branch"]) != 0 ? each.value["branch"] : local.config.poilcy.branch
  branch_protection               = length(each.value["branch_protection"]) != 0 ? each.value["branch_protection"] : local.config.poilcy.branch_protection
  required_status_checks          = local.config.poilcy.required_status_checks
  dismiss_stale_reviews           = local.config.poilcy.dismiss_stale_reviews
  require_code_owner_reviews      = local.config.poilcy.require_code_owner_reviews
  require_signed_commits          = local.config.poilcy.require_signed_commits
  required_approving_review_count = local.config.poilcy.required_approving_review_count
}

