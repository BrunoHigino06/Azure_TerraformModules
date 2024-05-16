variable "vnet" {
  type                          = list(object({
    name                        = string 
    resource_group_name         = string
    address_space               = list(string)
    location                    = string
    tags                        = map(string)
    bgp_community               = optional(string)
    ddos_protection_plan_id     = optional(string)
    ddos_protection_plan_enable = optional(string)
    encryption_enforcement      = optional(string)
    dns_servers                 = optional(list(string))
    edge_zone                   = optional(string)
    flow_timeout_in_minutes     = optional(string)
    subnet                      = optional(list(object({
        name                    = optional(string)
        address_prefix          = optional(string)
        security_group          = optional(string)
    })))

  }))
}