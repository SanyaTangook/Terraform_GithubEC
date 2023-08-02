terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
}


provider "github" {
  token = "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"
  owner = "uoio1"
}