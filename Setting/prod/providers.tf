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
