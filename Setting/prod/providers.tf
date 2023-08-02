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
