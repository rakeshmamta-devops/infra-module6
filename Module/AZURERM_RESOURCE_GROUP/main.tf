resource "azurerm_resource_group" "rkrg" {
  for_each   = var.rgs
  name       = each.value.rg_name
  location   = each.value.rg_location
  managed_by = each.value.managed_by
  tags       = each.value.tags


}
