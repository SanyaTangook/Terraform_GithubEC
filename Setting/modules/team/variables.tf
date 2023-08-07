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



variable "closed" {
  type = bool
}

locals {
  privacy = var.closed == true ? "closed" : "secret"
  
}