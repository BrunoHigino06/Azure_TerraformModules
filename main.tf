resource "azurerm_virtual_network" "vnet" {
  count                     = length(var.vnet)  
  name                      = var.vnet[count.index].name
  resource_group_name       = var.vnet[count.index].resource_group_name
  address_space             = var.vnet[count.index].address_space
  location                  = var.vnet[count.index].location
  tags                      = var.vnet[count.index].tags
  bgp_community             = var.vnet[count.index].bgp_community
  dns_servers               = var.vnet[count.index].dns_servers
  edge_zone                 = var.vnet[count.index].edge_zone
  flow_timeout_in_minutes   = var.vnet[count.index].flow_timeout_in_minutes
  ddos_protection_plan {
    id                      = var.vnet[count.index].ddos_protection_plan_id
    enable                  = var.vnet[count.index].ddos_protection_plan_enable
  }
  encryption {
    enforcement             = var.vnet[count.index].encryption_enforcement
  }
  dynamic "subnet" {
    for_each                = var.vnet[count.index].subnet
    content {
      name                  = subnet.value.name
      address_prefix        = subnet.value.address_prefix
      security_group        = subnet.value.security_group
    }
  }
}