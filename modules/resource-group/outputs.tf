output "id" {
  description = "ID do Resource Group."
  value       = azurerm_resource_group.this.id
}

output "name" {
  description = "Nome do Resource Group."
  value       = azurerm_resource_group.this.name
}

output "location" {
  description = "Região do Resource Group."
  value       = azurerm_resource_group.this.location
}
