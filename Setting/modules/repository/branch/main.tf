terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.32.0"
    }
  }
}
resource "github_branch" "branch" {
  for_each   = toset(var.branch)
  repository = var.repository
  branch     = each.key
}

resource "github_branch_protection" "branch_protection" {
  for_each               = toset(var.branch_protection)
  repository_id          = var.repository
  pattern                = each.key
  require_signed_commits = var.require_signed_commits

  required_status_checks {
    strict = var.required_status_checks
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = var.dismiss_stale_reviews
    require_code_owner_reviews      = var.require_code_owner_reviews
    required_approving_review_count = var.required_approving_review_count 
  }
}
