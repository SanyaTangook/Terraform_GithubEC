locals {
  files = flatten([for i in fileset(".", "*.yaml") : yamldecode(file(i))])
}

module "team" {
  source   = "../../modules/team"
  count = length(local.files)

  data_team = local.files[count.index]
}