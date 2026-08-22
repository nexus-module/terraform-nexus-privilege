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
| [nexus_privilege_repository_content_selector.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/privilege_repository_content_selector) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_actions"></a> [actions](#input\_actions) | Activate the feature of user tokens. | `list(string)` | n/a | yes |
| <a name="input_content_selector"></a> [content\_selector](#input\_content\_selector) | The content selector. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description. | `string` | `""` | no |
| <a name="input_format"></a> [format](#input\_format) | The format of the referenced Repository. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the privilege. This value cannot be changed. | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | Name of the repository the privilege applies to. | `string` | n/a | yes |

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
| [nexus_privilege_repository_content_selector.main](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs/resources/privilege_repository_content_selector) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_actions"></a> [actions](#input\_actions) | Activate the feature of user tokens. | `list(string)` | n/a | yes |
| <a name="input_content_selector"></a> [content\_selector](#input\_content\_selector) | The content selector. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description. | `string` | `""` | no |
| <a name="input_format"></a> [format](#input\_format) | The format of the referenced Repository. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the privilege. This value cannot be changed. | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | Name of the repository the privilege applies to. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_name"></a> [name](#output\_name) | The name of the resource. |
<!-- END_TF_DOCS -->
