# Generic Input Variables
# Business Division
variable "business_division" {
  description = "Buisiness division in the Organization this Infra belogs to"
  type = string
  default = "SAP"
}

# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix on infra elements"
  type = string
  default = "DEV"
}

# Azure Resource Group Name 
variable "resource_group_name" {
  description = "Resource Group Name"
  type = string
  default = "rg-default"
}

# Azure Resources Location
variable "resource_group_location" {
  description = "Region in which Resources are created"
  type = string
  default = "BrazilSouth"
}