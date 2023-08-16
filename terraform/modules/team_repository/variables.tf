
# ------ Team ------
variable "team_name" {
  type    = string
  default = ""
}

data "github_team" "team_id" {
  slug = var.team_name
}


variable "repository" {
  type    = map(string)
}

locals {
  repo = {
    for name, piss in var.repository :
    name => lower("${piss}") == "read" ? "pull" : lower("${piss}") == "write" ? "push" : lower("${piss}")
  }
}

