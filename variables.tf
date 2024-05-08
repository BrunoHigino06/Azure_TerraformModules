variable "resource_group" {
  type          = list(object({
    name        = string
    location    = string
    managed_by  = optional(string)
    tags        = map(string)
  }))
}