# --- Team_member ---
resource "github_team_membership" "team_members" {
  for_each = local.member
  team_id  = var.team_name
  username = each.key
  role     = each.value
}
# ------------------
