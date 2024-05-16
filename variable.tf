variable "subnet" {
  type                                            = list(object({
    name                                          = string
    resource_group_name                           = string
    virtual_network_name                          = string
    address_prefixes                              = list(string)
    delegation_name                               = optional(string)
    service_delegation_name                       = optional(string)
    service_delegation_actions                    = optional(list(string))
    private_link_service_network_policies_enabled = optional(string)
    service_endpoints                             = optional(list(string))
    service_endpoint_policy_ids                   = optional(list(string))
  }))
}