## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_privilege_wildcard.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/privilege_wildcard) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A description. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the privilege. This value cannot be changed. | `string` | n/a | yes |
| <a name="input_pattern"></a> [pattern](#input\_pattern) | The privilege pattern. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_nexus"></a> [nexus](#provider\_nexus) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [nexus_privilege_wildcard.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/privilege_wildcard) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A description. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the privilege. This value cannot be changed. | `string` | n/a | yes |
| <a name="input_pattern"></a> [pattern](#input\_pattern) | The privilege pattern. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |
<!-- END_TF_DOCS -->
