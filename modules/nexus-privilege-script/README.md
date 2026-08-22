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
| [nexus_privilege_script.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/privilege_script) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_actions"></a> [actions](#input\_actions) | Activate the feature of user tokens. | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the privilege. This value cannot be changed. | `string` | n/a | yes |
| <a name="input_script_name"></a> [script\_name](#input\_script\_name) | The script Name. | `string` | n/a | yes |

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
| [nexus_privilege_script.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/privilege_script) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_actions"></a> [actions](#input\_actions) | Activate the feature of user tokens. | `list(string)` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description. | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the privilege. This value cannot be changed. | `string` | n/a | yes |
| <a name="input_script_name"></a> [script\_name](#input\_script\_name) | The script Name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |
<!-- END_TF_DOCS -->
