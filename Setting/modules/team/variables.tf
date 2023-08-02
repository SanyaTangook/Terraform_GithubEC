# ------ Team ------
variable "team_name" {
  type = string
}

variable "description" {
  type = string
}

variable "parent_team" {
  type = string
}

variable "member" {
  type = map(map(string))
}

variable "closed" {
  type = bool
}

data "github_team" "name" {
  depends_on = [ github_team.team ]
  slug = var.team_name
}

locals {
  privacy = var.closed == true ? "closed" : "secret"
}