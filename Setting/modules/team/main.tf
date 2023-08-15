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
  for_each = var.data_team
  name           = each.key
  privacy        = each.value.closed == true ? "closed" : "secret" 
  description    = each.value.description
  parent_team_id = each.value.parent_team
}
# ------------------
