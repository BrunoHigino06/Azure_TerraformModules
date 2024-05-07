variable "resource_group" {
  type          = list(object({
    name        = string
    location    = string
    managed_by  = string
    tags        = map(string)
  }))
}