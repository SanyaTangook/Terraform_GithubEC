# --- Team_member ---
resource "github_team_members" "team_members" {
  for_each = var.data_team_member
  team_id  = each.key

  dynamic "members" {
    for_each = each.value
    content {
      username = members.key
      role     = members.value
    }
  }
}
# ------------------
