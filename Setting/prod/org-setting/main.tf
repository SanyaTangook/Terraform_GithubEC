locals {
  config = yamldecode(file("${path.module}/variables.yaml"))
}



module "org-setting" {
  source = "../../modules/org-setting"

  billing_email                                                = local.config.org-setting.billing_email
  blog                                                         = local.config.org-setting.blog
  description                                                  = local.config.org-setting.description
  location                                                     = local.config.org-setting.location
  has_organization_projects                                    = local.config.org-setting.has_organization_projects
  has_repository_projects                                      = local.config.org-setting.has_repository_projects
  default_repository_permission                                = local.config.org-setting.default_repository_permission
  members_can_create_repositories                              = local.config.org-setting.members_can_create_repositories
  members_can_create_public_repositories                       = local.config.org-setting.members_can_create_public_repositories
  members_can_create_private_repositories                      = local.config.org-setting.members_can_create_private_repositories
  members_can_create_internal_repositories                     = local.config.org-setting.members_can_create_internal_repositories
  members_can_create_pages                                     = local.config.org-setting.members_can_create_pages
  members_can_create_public_pages                              = local.config.org-setting.members_can_create_public_pages
  members_can_create_private_pages                             = local.config.org-setting.members_can_create_private_pages
  members_can_fork_private_repositories                        = local.config.org-setting.members_can_fork_private_repositories
  web_commit_signoff_required                                  = local.config.org-setting.web_commit_signoff_required
  advanced_security_enabled_for_new_repositories               = local.config.org-setting.advanced_security_enabled_for_new_repositories
  dependabot_alerts_enabled_for_new_repositories               = local.config.org-setting.dependabot_alerts_enabled_for_new_repositories
  dependabot_security_updates_enabled_for_new_repositories     = local.config.org-setting.dependabot_security_updates_enabled_for_new_repositories
  dependency_graph_enabled_for_new_repositories                = local.config.org-setting.dependency_graph_enabled_for_new_repositories
  secret_scanning_enabled_for_new_repositories                 = local.config.org-setting.secret_scanning_enabled_for_new_repositories
  secret_scanning_push_protection_enabled_for_new_repositories = local.config.org-setting.secret_scanning_push_protection_enabled_for_new_repositories
}