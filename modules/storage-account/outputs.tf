output "id" {
  description = "ID da Storage Account."
  value       = azurerm_storage_account.this.id
}

output "name" {
  description = "Nome da Storage Account."
  value       = azurerm_storage_account.this.name
}

output "primary_blob_endpoint" {
  description = "Endpoint primário de Blob."
  value       = azurerm_storage_account.this.primary_blob_endpoint
}

output "container_names" {
  description = "Nomes dos containers criados."
  value       = [for c in azurerm_storage_container.this : c.name]
}
