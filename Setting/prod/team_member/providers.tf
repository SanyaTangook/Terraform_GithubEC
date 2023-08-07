terraform {
  required_version = "1.4.6"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
  # backend "azurerm" {}
}

provider "github" {
  token = "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"
  owner = "uoio1"
}

# provider "github" {
#   token = var.github_org_token
#   owner = var.github_org_name
# }

