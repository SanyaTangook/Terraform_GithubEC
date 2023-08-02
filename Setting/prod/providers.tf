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