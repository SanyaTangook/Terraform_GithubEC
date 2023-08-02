terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.32.0"
    }
  }
}


# ------ Team ------
resource "github_team" "team" {
  name           = var.team_name
  privacy        = local.privacy
  description    = var.description
  parent_team_id = var.parent_team
}
# ------------------

# --- Team_member ---
resource "github_team_members" "team_members" {
  depends_on = [data.github_team.name]
  for_each   = var.member
  team_id    = data.github_team.name.id

  members {
    username = each.key
    role     = each.value[data.github_team.name.name]
  }
}

# ------------------
