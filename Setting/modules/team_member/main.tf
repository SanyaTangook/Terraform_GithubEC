# --- Team_member ---
# resource "github_team_members" "team_members" {
#   for_each = local.role
#   team_id  = "DBA"

#   members {
#     username = each.key
#     role     = each.value
#   }
# }

# ------------------
