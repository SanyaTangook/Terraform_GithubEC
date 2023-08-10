variable "billing_email" {
  type    = string
}

variable "blog" {
  type    = string
}

variable "description" {
  type    = string
}

variable "location" {
  type    = string
}

variable "has_organization_projects" {
  type    = bool
  default = true
}

variable "has_repository_projects" {
  type    = bool
  default = true
}

variable "default_repository_permission" {
  type    = string
}

variable "members_can_create_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_public_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_private_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_internal_repositories" {
  type    = bool
  default = true
}

variable "members_can_create_pages" {
  type    = bool
  default = true
}

variable "members_can_create_public_pages" {
  type    = bool
  default = true
}

variable "members_can_create_private_pages" {
  type    = bool
  default = true
}

variable "members_can_fork_private_repositories" {
  type    = bool
  default = true
}

variable "web_commit_signoff_required" {
  type    = bool
  default = true
}


variable "advanced_security_enabled_for_new_repositories" {
  type    = bool
  default = false
}

variable "dependabot_alerts_enabled_for_new_repositories" {
  type    = bool
  default = false
}

variable "dependabot_security_updates_enabled_for_new_repositories" {
  type    = bool
  default = false
}

variable "dependency_graph_enabled_for_new_repositories" {
  type    = bool
  default = false
}

variable "secret_scanning_enabled_for_new_repositories" {
  type    = bool
  default = false
}

variable "secret_scanning_push_protection_enabled_for_new_repositories" {
  type    = bool
  default = false
}