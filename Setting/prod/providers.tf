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
