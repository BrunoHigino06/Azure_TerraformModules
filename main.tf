resource "azurerm_subnet" "subnet" {
    count = length(var.subnet)      
    name                 = var.subnet[count.index].name
    resource_group_name  = var.subnet[count.index].resource_group_name
    virtual_network_name = var.subnet[count.index].virtual_network_name
    address_prefixes     = var.subnet[count.index].address_prefixes

    delegation {
        name = var.subnet[count.index].delegation_name

        service_delegation {
        name    = var.subnet[count.index].service_delegation_name
        actions = var.subnet[count.index].service_delegation_actions
        }
    }
}