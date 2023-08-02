terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
}

# --- repository ---
resource "github_repository" "repository" {
  name       = var.repository
  auto_init  = var.auto_init
  visibility = local.visibility
  lifecycle {
    create_before_destroy = true
  }
}

# ------------------

module "branch" {
  source = "./branch"

  depends_on = [github_repository.repository]

  repository                      = var.repository
  branch                          = var.branch
  branch_protection               = var.branch_protection
  require_signed_commits          = var.require_signed_commits
  require_code_owner_reviews      = var.require_code_owner_reviews
  required_status_checks          = var.required_status_checks
  dismiss_stale_reviews           = var.dismiss_stale_reviews
  required_approving_review_count = var.required_approving_review_count
}