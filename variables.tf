variable "project" {
  type    = string
  default = "contoso"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "location" {
  type = object({
    name = string
    code = string
  })
  default = {
    name = "westeurope"
    code = "weu"
  }
}

variable "tenant_id" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type      = string
  sensitive = true
}

# variable "remote_state_tenant_id" {
#   type = string
# }

# variable "remote_state_subscription_id" {
#   type = string
# }

# variable "remote_state_resource_group_name" {
#   type = string
# }

# variable "remote_state_storage_account_name" {
#   type = string
# }

# variable "remote_state_container_name" {
#   type = string
# }

# variable "remote_state_key" {
#   type = string
# }
