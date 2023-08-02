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
