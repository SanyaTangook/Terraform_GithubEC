# --- repository ---
variable "repository" {
  type = string
}


variable "public" {
  type = bool
  default = false
}

variable "auto_init" {
  type    = bool
  default = true
}

# ------------------

# ----- branch -----
variable "branch" {
  type = list(string)
}

variable "branch_protection" {
  type = list(string)
}

variable "required_status_checks" {
  type = bool
}

variable "dismiss_stale_reviews" {
  type = bool
}

variable "require_code_owner_reviews" {
  type = bool
}

variable "required_approving_review_count" {
  type = number
  default = 2
}

variable "require_signed_commits" {
  type    = bool
  default = true
}
# ------------------

locals {
  visibility = var.public == true ? "public" : "private"
}