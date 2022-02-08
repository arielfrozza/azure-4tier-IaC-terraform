# Traffic Manager FQDN Output
output "traffic_manager_fqdn" {
  description = "Traffic Manager FQDN"
  value = azurerm_traffic_manager_profile.tm_profile.fqdn
}

# Traffic Manager FQDN Output
#output "weblb_pubip_address_id" {
#  description = "weblb_pubip_address_id - Traffic Manager"
#  value = data.terraform_remote_state.project1_brazilsouth.outputs.web_lb_public_ip_address_id
#}