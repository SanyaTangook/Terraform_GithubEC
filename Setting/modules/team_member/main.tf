# --- Team_member ---
resource "github_team_members" "team_members" {
  team_id    = "SWE"

  members {
    username = var.username
    role     = var.role
  }
}

# ------------------
