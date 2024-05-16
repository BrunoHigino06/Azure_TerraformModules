resource "azurerm_subnet" "subnet" {
    count = length(var.subnet)      
    name                                            = var.subnet[count.index].name
    resource_group_name                             = var.subnet[count.index].resource_group_name
    virtual_network_name                            = var.subnet[count.index].virtual_network_name
    address_prefixes                                = var.subnet[count.index].address_prefixes
    private_link_service_network_policies_enabled   = var.subnet[count.index].private_link_service_network_policies_enabled
    service_endpoints                               = var.subnet[count.index].service_endpoints
    service_endpoint_policy_ids                     = var.subnet[count.index].service_endpoint_policy_ids
    delegation {
        name                                        = var.subnet[count.index].delegation_name
        service_delegation {
        name                                        = var.subnet[count.index].service_delegation_name
        actions                                     = var.subnet[count.index].service_delegation_actions
        }
    }
}