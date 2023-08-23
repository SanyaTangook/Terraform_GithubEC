locals {
  files = {for i in fileset("../../config/team", "*.yaml") : i => yamldecode(file("../../config/team/${i}"))}

}

module "team" {
  source   = "../../modules/team"
  for_each = local.files

  data_team = each.value
}