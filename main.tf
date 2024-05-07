resource "azurerm_resource_group" "resource_group" {
  count         = length(var.resource_group)  
  name          = var.resource_group[count.index].name
  location      = var.resource_group[count.index].location
  managed_by    = var.resource_group[count.index].managed_by
  tags          = var.resource_group[count.index].tags
}