terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
}

resource "github_team_repository" "team_repo" {
  for_each   = local.repo
  team_id    = data.github_team.team_id.id
  repository = each.key
  permission = each.value
}

