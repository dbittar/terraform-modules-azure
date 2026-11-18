# terraform-modules-azure

Repositório de módulos Terraform reutilizáveis para Azure.

## Módulos

| Módulo | Descrição |
|--------|-----------|
| [resource-group](modules/resource-group) | Azure Resource Group |
| [storage-account](modules/storage-account) | Azure Storage Account + containers privados |

## Como consumir

Referencie o módulo por tag Git para garantir versões imutáveis:

```hcl
module "resource_group" {
  source = "git::https://github.com/dbittar/terraform-modules-azure.git//modules/resource-group?ref=v1.0.0"
  # ...
}
```

Se o repositório for privado, o workflow do projeto consumidor precisa de credenciais para clonar (veja o README do projeto `infra-azure-project`).

## Versionamento

Siga [SemVer](https://semver.org/lang/pt-BR/) e publique tags (`v1.0.0`, `v1.1.0`, ...).

```bash
git tag v1.0.0
git push origin v1.0.0
```

## CI

O workflow `.github/workflows/validate.yml` roda `terraform fmt -check` e `terraform validate` em cada módulo a cada push/PR.
