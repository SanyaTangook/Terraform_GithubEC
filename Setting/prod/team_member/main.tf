locals {
  config = yamldecode(file("${path.module}/variables.yaml"))
  files = flatten([for i in fileset(".", "*.yaml") : yamldecode(file(i))])
}


output "name" {
  value = local.files
}
module "team_member" {
  source = "../../modules/team_member"
  count = length(local.files)
  
  data_team_member = local.files[count.index]
}