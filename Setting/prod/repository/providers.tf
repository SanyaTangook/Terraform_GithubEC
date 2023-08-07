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


# provider "github" {
#   token = var.github_org_token
#   owner = var.github_org_name
# }

provider "github" {
  token = "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"
  owner = "uoio1"
}