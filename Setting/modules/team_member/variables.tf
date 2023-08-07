locals {
  role = {for i,k in var.data_team_member : i => k}
}

variable "data_team_member" {
  type = map(map(string))
}

output "name" {
  value = var.data_team_member
}