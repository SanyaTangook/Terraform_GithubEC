terraform {
  required_version = "1.4.6"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
  backend "azurerm" {}
}

provider "github" {
  token = var.github_org_token
  owner = var.github_org_name
}


