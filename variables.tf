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
