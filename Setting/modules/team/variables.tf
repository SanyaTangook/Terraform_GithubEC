variable "data_team" {
  type = map(object({
    closed = bool
    description = string
    parent_team = string
  }))
}