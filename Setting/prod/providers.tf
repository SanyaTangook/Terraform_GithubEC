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
