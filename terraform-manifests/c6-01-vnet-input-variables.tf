## Virtual Network, Subnets and Subnet NSG's
# Virtual Network
variable "vnet_name" {
    description = "Virtual Network Name"
    type = string
    default = "vnet-default"
}

# Network Address Space
variable "vnet_address_space" {
    description = "Virtual Network Address Space"
    type = list(string)
    default = [ "10.0.0.0/16" ]
}

# Web Subnet Name
variable "web_subnet_name" {
    description = "Vnet Web Subnet subnet name"
    type = string
    default = "websubnet"
}

# Network Address Space
variable "web_address_space" {
    description = "Vnet Web Subnet address space"
    type = list(string)
    default = [ "10.0.1.0/24" ]
}

# App Subnet Name
variable "app_subnet_name" {
    description = "Vnet APP Subnet subnet name"
    type = string
    default = "appsubnet"
}
# App Subnet Address Space
variable "app_address_space" {
    description = "Vnet app Subnet address space"
    type = list(string)
    default = [ "10.0.2.0/24" ]
}
# Database Subnet Name
variable "db_subnet_name" {
    description = "Vnet DB Subnet subnet name"
    type = string
    default = "dbsubnet"
}
# Database Subnet Address Space
variable "db_address_space" {
    description = "Vnet db Subnet address space"
    type = list(string)
    default = [ "10.0.3.0/24" ]
}
# Bastion / Management Subnet Name
variable "bastion_subnet_name" {
    description = "Vnet bastion Subnet subnet name"
    type = string
    default = "bastionsubnet"
}
# Bastion / Management Subnet Address Space
variable "bastion_address_space" {
    description = "Vnet bastion Subnet address space"
    type = list(string)
    default = [ "10.0.4.0/24" ]
}



