locals {
  files = {for i in fileset("../../config/org-setting", "*.yaml") : i => yamldecode(file("../../config/org-setting/${i}"))}
}

module "org-setting" {
  source = "../../modules/org-setting"
  for_each = local.files

  settings = each.value.setting
  team = each.value.organization_security_manager.team
}
