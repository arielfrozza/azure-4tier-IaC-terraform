business_division = "HR"
environment = "DEV"
resource_group_name = "rg"
resource_group_location = "BrazilSouth"

vnet_name = "vnet"
vnet_address_space = [ "10.1.0.0/16" ]

web_subnet_name = "web_subnet"
web_address_space = [ "10.1.1.0/24" ]

app_subnet_name = "app_subnet"
app_address_space = [ "10.1.2.0/24" ]

db_subnet_name = "db_subnet"
db_address_space = [ "10.1.3.0/24" ]

bastion_subnet_name = "bastion_subnet"
bastion_address_space = [ "10.1.4.0/24" ]

bastion_service_subnet_name = "AzureBastionSubnet"
bastion_service_address_prefixes = [ "10.1.101.0/24" ]

web_vmss_nsg_inbound_ports = [ 22, 80, 443 ]