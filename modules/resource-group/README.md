# Módulo: resource-group

Cria um Azure Resource Group.

## Uso

```hcl
module "resource_group" {
  source = "git::https://github.com/dbittar/terraform-modules-azure.git//modules/resource-group?ref=v1.0.0"

  name     = "rg-exemplo-dev"
  location = "brazilsouth"
  tags     = { environment = "dev" }
}
```

## Inputs

| Nome | Descrição | Tipo | Padrão | Obrigatório |
|------|-----------|------|--------|:-----------:|
| name | Nome do Resource Group | `string` | n/a | sim |
| location | Região do Azure | `string` | n/a | sim |
| tags | Tags do recurso | `map(string)` | `{}` | não |

## Outputs

| Nome | Descrição |
|------|-----------|
| id | ID do Resource Group |
| name | Nome do Resource Group |
| location | Região do Resource Group |
