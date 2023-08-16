terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
  }
}

# provider "github" {
#   token = var.github_org_token
#   owner = var.github_org_name
# }