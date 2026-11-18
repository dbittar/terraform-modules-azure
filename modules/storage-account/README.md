# Módulo: storage-account

Cria uma Azure Storage Account com boas práticas de segurança (TLS 1.2, tráfego somente HTTPS, sem acesso público a blobs, versionamento e soft delete) e, opcionalmente, containers privados.

> Requer o provider `azurerm` 4.x (usa `storage_account_id` no container e `https_traffic_only_enabled`).

## Uso

```hcl
module "storage_account" {
  source = "git::https://github.com/dbittar/terraform-modules-azure.git//modules/storage-account?ref=v1.0.0"

  name                = "stexemplodev001"
  resource_group_name = module.resource_group.name
  location            = module.resource_group.location
  containers          = ["dados", "logs"]
  tags                = { environment = "dev" }
}
```

## Inputs

| Nome | Descrição | Tipo | Padrão | Obrigatório |
|------|-----------|------|--------|:-----------:|
| name | Nome da Storage Account (3-24, minúsculas e números) | `string` | n/a | sim |
| resource_group_name | Resource Group de destino | `string` | n/a | sim |
| location | Região do Azure | `string` | n/a | sim |
| account_tier | Standard ou Premium | `string` | `"Standard"` | não |
| account_replication_type | LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS | `string` | `"LRS"` | não |
| account_kind | Tipo da conta | `string` | `"StorageV2"` | não |
| public_network_access_enabled | Acesso pela rede pública | `bool` | `true` | não |
| versioning_enabled | Versionamento de blobs | `bool` | `true` | não |
| blob_delete_retention_days | Dias de soft delete | `number` | `7` | não |
| containers | Containers privados a criar | `list(string)` | `[]` | não |
| tags | Tags dos recursos | `map(string)` | `{}` | não |

## Outputs

| Nome | Descrição |
|------|-----------|
| id | ID da Storage Account |
| name | Nome da Storage Account |
| primary_blob_endpoint | Endpoint primário de Blob |
| container_names | Nomes dos containers criados |
