# variable "data_team_member" {
#   type = map(map(string))
# }
variable "data_team_member" {
  type = map(object({
    closed = bool
    member =  map(string)
    description = string
    parent_team = string
  }))
}
