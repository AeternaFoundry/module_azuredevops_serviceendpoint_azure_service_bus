resource "azuredevops_serviceendpoint_azure_service_bus" "serviceendpoint_azure_service_buses" {
  for_each = var.serviceendpoint_azure_service_buses

  connection_string     = each.value.connection_string
  project_id            = each.value.project_id
  queue_name            = each.value.queue_name
  service_endpoint_name = each.value.service_endpoint_name
  description           = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

