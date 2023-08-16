variable "branch" {
  type    = list(string)
}

variable "branch_protection" {
  type    = list(string)
}

variable "required_status_checks" {
  type = bool
}

variable "dismiss_stale_reviews" {
  type    = bool
}

variable "require_code_owner_reviews" {
  type    = bool
}

variable "required_approving_review_count" {
  type    = number
  default = 2
}

variable "repository" {
  type    = string
}

variable "require_signed_commits" {
  type = bool
}