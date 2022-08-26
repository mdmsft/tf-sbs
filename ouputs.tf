output "client_config_client_id" {
  value = data.azurerm_client_config.current.client_id
}

output "client_config_object_id" {
  value = data.azurerm_client_config.current.object_id
}

output "storage_primary_blob_endpoint" {
  value = module.storage.primary_blob_endpoint
}
