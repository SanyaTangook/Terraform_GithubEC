terraform {
  # required_version = "1.5.5"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
  }
  # backend "azurerm" {}
}

# provider "github" {
#   token = var.github_org_token
#   owner = var.github_org_name
# }

provider "github" {
  token = "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"
  owner = "uoio1"
}