output "serviceendpoint_azure_service_buses_id" {
  description = "Map of id values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses except keys with no id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "serviceendpoint_azure_service_buses_authorization" {
  description = "Map of authorization values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses except keys with no authorization are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.authorization if v.authorization != null && length(v.authorization) > 0 }
}
output "serviceendpoint_azure_service_buses_connection_string" {
  description = "Map of connection_string values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses except keys with no connection_string are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.connection_string if v.connection_string != null && length(v.connection_string) > 0 }
  sensitive   = true
}
output "serviceendpoint_azure_service_buses_description" {
  description = "Map of description values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses except keys with no description are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.description if v.description != null && length(v.description) > 0 }
}
output "serviceendpoint_azure_service_buses_project_id" {
  description = "Map of project_id values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "serviceendpoint_azure_service_buses_queue_name" {
  description = "Map of queue_name values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses except keys with no queue_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.queue_name if v.queue_name != null && length(v.queue_name) > 0 }
}
output "serviceendpoint_azure_service_buses_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_azure_service_buses, keyed the same as var.serviceendpoint_azure_service_buses except keys with no service_endpoint_name are omitted"
  value       = { for k, v in azuredevops_serviceendpoint_azure_service_bus.serviceendpoint_azure_service_buses : k => v.service_endpoint_name if v.service_endpoint_name != null && length(v.service_endpoint_name) > 0 }
}

