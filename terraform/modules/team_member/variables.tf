
# ------ Team ------
variable "team_name" {
  type    = string
  default = ""
}

variable "member" {
  type    = map(string)
}

locals {
  member = {
    for name, role in var.member :
    name => role
  }
}

# variable "github_org_token" {
#   description = "The token for accessing the GitHub organization"
#   type        = string
#   sensitive   = true
# }

# variable "github_org_name" {
#   description = "The name of the GitHub organization"
#   type        = string
# }