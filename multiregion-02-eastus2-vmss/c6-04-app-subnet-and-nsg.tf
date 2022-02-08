# Resource-1: Create AppTier Subnet
resource "azurerm_subnet" "appsubnet" {
    name = "${azurerm_virtual_network.vnet.name}-${var.app_subnet_name}"
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes = var.app_address_space
}
# Resource-2: Create Network Security Group (NSG)
resource "azurerm_network_security_group" "app_subnet_nsg" {
    name = "${azurerm_subnet.appsubnet.name}-nsg"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name 
}
# Resource-3: Associate NSG and Subnet
resource "azurerm_subnet_network_security_group_association" "app_subnet_msg_association" {
    depends_on = [
      azurerm_network_security_rule.app_nsg_rule_inbound
    ]
    subnet_id = azurerm_subnet.appsubnet.id
    network_security_group_id = azurerm_network_security_group.app_subnet_nsg.id
  
}
# Resource-4: Create NSG Rules
## Locals Block for Security Rules
locals {
  app_inbound_ports_map = {
      # priority/key : or = port/value, : if key is numeric
      "100" : "22"
      "110" : "80"
      "120" : "443"
  }
}
## NSG Inbound Rule for AppTier Subnets
resource "azurerm_network_security_rule" "app_nsg_rule_inbound" {
  for_each = local.app_inbound_ports_map
  name                        = "Rule_port_${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.app_subnet_nsg.name
}