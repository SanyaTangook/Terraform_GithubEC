locals {
  config = [for i in fileset("D:/test_terraform/Setting/config/org-setting", "*.yaml") : yamldecode(file("D:/test_terraform/Setting/config/org-setting/${i}"))]
}



module "org-setting" {
  source = "../../modules/org-setting"

  count = length(local.config)

  billing_email                                                = local.config[count.index].org-setting.billing_email
  blog                                                         = local.config[count.index].org-setting.blog
  description                                                  = local.config[count.index].org-setting.description
  location                                                     = local.config[count.index].org-setting.location
  has_organization_projects                                    = local.config[count.index].org-setting.has_organization_projects
  has_repository_projects                                      = local.config[count.index].org-setting.has_repository_projects
  default_repository_permission                                = local.config[count.index].org-setting.default_repository_permission
  members_can_create_repositories                              = local.config[count.index].org-setting.members_can_create_repositories
  members_can_create_public_repositories                       = local.config[count.index].org-setting.members_can_create_public_repositories
  members_can_create_private_repositories                      = local.config[count.index].org-setting.members_can_create_private_repositories
  members_can_create_internal_repositories                     = local.config[count.index].org-setting.members_can_create_internal_repositories
  members_can_create_pages                                     = local.config[count.index].org-setting.members_can_create_pages
  members_can_create_public_pages                              = local.config[count.index].org-setting.members_can_create_public_pages
  members_can_create_private_pages                             = local.config[count.index].org-setting.members_can_create_private_pages
  members_can_fork_private_repositories                        = local.config[count.index].org-setting.members_can_fork_private_repositories
  web_commit_signoff_required                                  = local.config[count.index].org-setting.web_commit_signoff_required
  advanced_security_enabled_for_new_repositories               = local.config[count.index].org-setting.advanced_security_enabled_for_new_repositories
  dependabot_alerts_enabled_for_new_repositories               = local.config[count.index].org-setting.dependabot_alerts_enabled_for_new_repositories
  dependabot_security_updates_enabled_for_new_repositories     = local.config[count.index].org-setting.dependabot_security_updates_enabled_for_new_repositories
  dependency_graph_enabled_for_new_repositories                = local.config[count.index].org-setting.dependency_graph_enabled_for_new_repositories
  secret_scanning_enabled_for_new_repositories                 = local.config[count.index].org-setting.secret_scanning_enabled_for_new_repositories
  secret_scanning_push_protection_enabled_for_new_repositories = local.config[count.index].org-setting.secret_scanning_push_protection_enabled_for_new_repositories
}