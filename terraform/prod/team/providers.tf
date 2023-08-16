terraform {
  required_version = "1.5.5"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.33.0"
    }
  }
  backend "azurerm" {}
}

provider "github" {
  token = var.github_org_token
  owner = var.github_org_name
}
