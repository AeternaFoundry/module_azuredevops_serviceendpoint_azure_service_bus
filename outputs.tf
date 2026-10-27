output "serviceendpoint_azure_service_buses_id" {
  description = "Map of id values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.id }
}
output "serviceendpoint_azure_service_buses_authorization" {
  description = "Map of authorization values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.authorization }
}
output "serviceendpoint_azure_service_buses_connection_string" {
  description = "Map of connection_string values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.connection_string }
  sensitive   = true
}
output "serviceendpoint_azure_service_buses_description" {
  description = "Map of description values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.description }
}
output "serviceendpoint_azure_service_buses_project_id" {
  description = "Map of project_id values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.project_id }
}
output "serviceendpoint_azure_service_buses_queue_name" {
  description = "Map of queue_name values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.queue_name }
}
output "serviceendpoint_azure_service_buses_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.service_endpoint_name }
}

