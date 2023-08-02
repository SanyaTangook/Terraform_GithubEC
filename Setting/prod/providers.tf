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
