variable "serviceendpoint_azure_service_buses" {
  description = <<EOT
Map of serviceendpoint_azure_service_buses, attributes below
Required:
    - connection_string
    - project_id
    - queue_name
    - service_endpoint_name
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    connection_string     = string
    project_id            = string
    queue_name            = string
    service_endpoint_name = string
    description           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_azure_service_buses : (
        length(v.connection_string) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.serviceendpoint_azure_service_buses : (
        length(v.queue_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}

