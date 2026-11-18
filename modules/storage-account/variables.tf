variable "name" {
  description = "Nome da Storage Account (3-24 caracteres, apenas letras minúsculas e números, único globalmente)."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9]{3,24}$", var.name))
    error_message = "O nome deve ter de 3 a 24 caracteres, apenas letras minúsculas e números."
  }
}

variable "resource_group_name" {
  description = "Nome do Resource Group onde a Storage Account será criada."
  type        = string
}

variable "location" {
  description = "Região do Azure (ex.: brazilsouth)."
  type        = string
}

variable "account_tier" {
  description = "Tier da conta: Standard ou Premium."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Tipo de replicação: LRS, GRS, RAGRS, ZRS, GZRS ou RAGZRS."
  type        = string
  default     = "LRS"
}

variable "account_kind" {
  description = "Tipo da conta (StorageV2, BlobStorage, BlockBlobStorage, FileStorage)."
  type        = string
  default     = "StorageV2"
}

variable "public_network_access_enabled" {
  description = "Permite acesso pela rede pública."
  type        = bool
  default     = true
}

variable "versioning_enabled" {
  description = "Habilita versionamento de blobs."
  type        = bool
  default     = true
}

variable "blob_delete_retention_days" {
  description = "Dias de retenção para blobs excluídos (soft delete)."
  type        = number
  default     = 7
}

variable "containers" {
  description = "Lista de containers de blob privados a criar."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags aplicadas aos recursos."
  type        = map(string)
  default     = {}
}
