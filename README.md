# Nexus Privilege

This module allows you to create **Nexus Privilege as a global resource** and **individual Nexus Privilege resources.** For individual examples, see the usage snippets and [examples](https://github.com/nexus-module/terraform-nexus-privilege/tree/main/examples).

## Provider
You need use a [Nexus provider](https://registry.terraform.io/providers/datadrivers/nexus/latest/docs).
```hcl
provider "nexus" {
  insecure = true
  password = "admin123"
  url      = "https://127.0.0.1:8080"
  username = "admin"
}
```

## Root module usage

`nexus-privilege`:

```hcl
module "nexus_privilege" {
  source  = "nexus-module/privilege/nexus"

 nexus_privilege_application = [
    {
      name        = "example_privilege-app"
      description = "description"
      actions     = ["ADD", "READ", "EDIT", "DELETE"]
      domain      = "domain"
    },
  ]

  nexus_privilege_repository_admin = [
    {
      name        = "example_privilege-admin"
      description = "description"
      actions     = ["ADD", "READ", "DELETE", "BROWSE", "EDIT"]
      repository  = "repository-name"
      format      = "helm"
    },
  ]

  nexus_privilege_repository_content_selector = [
    {
      name             = "example_privilege-selector"
      description      = "description"
      actions          = ["ADD", "READ", "DELETE", "BROWSE", "EDIT"]
      repository       = "repository-name"
      format           = "helm"
      content_selector = "content-selector-name"
    },
  ]

  nexus_privilege_repository_view = [
    {
      name        = "example_privilege-view"
      description = "description"
      actions     = ["ADD", "READ", "DELETE", "BROWSE", "EDIT"]
      repository  = "repository-name"
      format      = "helm"
    },
  ]

  nexus_privilege_script = [
    {
      name        = "example_privilege-script"
      description = "description"
      actions     = ["ADD", "READ", "DELETE", "RUN", "BROWSE", "EDIT"]
      script_name = "script-name"
    },
  ]

  nexus_privilege_wildcard = [
    {
      name        = "example_privilege-wilcard"
      description = "description"
      pattern     = "nexus:*"
    },
  ]
}
```

## Individual module usage

`nexus-privilege-application`:

```hcl
module "nexus_privilege_application" {
  source  = "nexus-module/privilege/nexus//modules/nexus-privilege-application"

  name        = "example_privilege"
  description = "description"
  actions     = ["ADD", "READ", "EDIT", "DELETE"]
  domain      = "domain"
}
```

`nexus-privilege-repository-admin`:

```hcl
module "nexus_privilege_repository_admin" {
  source  = "nexus-module/privilege/nexus//modules/nexus-privilege-repository-admin"

  name        = "example_privilege"
  description = "description"
  actions     = ["ADD", "READ", "DELETE", "BROWSE", "EDIT"]
  repository  = "repository-name"
  format      = "helm"
}
```

`nexus-privilege-repository-content-selector`:

```hcl
module "nexus_privilege_repository_content_selector" {
  source  = "nexus-module/privilege/nexus//modules/nexus-privilege-repository-content-selector"

  name             = "example_privilege"
  description      = "description"
  actions          = ["ADD", "READ", "DELETE", "BROWSE", "EDIT"]
  repository       = "repository-name"
  format           = "helm"
  content_selector = "content-selector-name"
}
```

`nexus-privilege-repository-view`:

```hcl
module "nexus_privilege_repository_view" {
  source  = "nexus-module/privilege/nexus//modules/nexus-privilege-repository-view"

  name        = "example_privilege"
  description = "description"
  actions     = ["ADD", "READ", "DELETE", "BROWSE", "EDIT"]
  repository  = "repository-name"
  format      = "helm"
}
```

`nexus-privilege-script`:

```hcl
module "nexus_privilege_script" {
  source  = "nexus-module/privilege/nexus//modules/nexus-privilege-script"

  name        = "example_privilege"
  description = "description"
  actions     = ["ADD", "READ", "DELETE", "RUN", "BROWSE", "EDIT"]
  script_name = "script-name"
}
```

`nexus-privilege-wilcard`:

```hcl
module "nexus_privilege_wildcard" {
  source  = "nexus-module/privilege/nexus//modules/nexus-privilege-wildcard"

  description = "description"
  pattern     = "nexus:*"
}
```

## Terraform Docs

### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_nexus"></a> [nexus](#requirement\_nexus) | >= 2.0.0 |

### Providers

No providers.

### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_nexus_privilege_application"></a> [nexus\_privilege\_application](#module\_nexus\_privilege\_application) | ./modules/nexus-privilege-application | n/a |
| <a name="module_nexus_privilege_repository_admin"></a> [nexus\_privilege\_repository\_admin](#module\_nexus\_privilege\_repository\_admin) | ./modules/nexus-privilege-repository-admin | n/a |
| <a name="module_nexus_privilege_repository_content_selector"></a> [nexus\_privilege\_repository\_content\_selector](#module\_nexus\_privilege\_repository\_content\_selector) | ./modules/nexus-privilege-repository-content-selector | n/a |
| <a name="module_nexus_privilege_repository_view"></a> [nexus\_privilege\_repository\_view](#module\_nexus\_privilege\_repository\_view) | ./modules/nexus-privilege-repository-view | n/a |
| <a name="module_nexus_privilege_script"></a> [nexus\_privilege\_script](#module\_nexus\_privilege\_script) | ./modules/nexus-privilege-script | n/a |
| <a name="module_nexus_privilege_wildcard"></a> [nexus\_privilege\_wildcard](#module\_nexus\_privilege\_wildcard) | ./modules/nexus-privilege-wildcard | n/a |

### Resources

No resources.

### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_nexus_privilege_application"></a> [nexus\_privilege\_application](#input\_nexus\_privilege\_application) | Privilege Application. | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    actions     = list(string)<br>    domain      = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_privilege_repository_admin"></a> [nexus\_privilege\_repository\_admin](#input\_nexus\_privilege\_repository\_admin) | Privilege Repository Admin. | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    actions     = list(string)<br>    repository  = string<br>    format      = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_privilege_repository_content_selector"></a> [nexus\_privilege\_repository\_content\_selector](#input\_nexus\_privilege\_repository\_content\_selector) | Privilege Repository Content Selector. | <pre>list(object({<br>    name             = string<br>    description      = string<br>    actions          = list(string)<br>    repository       = string<br>    format           = string<br>    content_selector = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_privilege_repository_view"></a> [nexus\_privilege\_repository\_view](#input\_nexus\_privilege\_repository\_view) | Privilege Repository View. | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    actions     = list(string)<br>    repository  = string<br>    format      = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_privilege_script"></a> [nexus\_privilege\_script](#input\_nexus\_privilege\_script) | Privilege Script. | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    actions     = list(string)<br>    script_name = string<br>  }))</pre> | `[]` | no |
| <a name="input_nexus_privilege_wildcard"></a> [nexus\_privilege\_wildcard](#input\_nexus\_privilege\_wildcard) | Privilege Repository Wilcard. | <pre>list(object({<br>    name        = string<br>    description = optional(string)<br>    pattern     = optional(string)<br>  }))</pre> | `[]` | no |

### Outputs

| Name | Description |
|------|-------------|
| <a name="output_privilege_application_name"></a> [privilege\_application\_name](#output\_privilege\_application\_name) | The name of the privilege application. |
| <a name="output_privilege_repository_admin_name"></a> [privilege\_repository\_admin\_name](#output\_privilege\_repository\_admin\_name) | The name of the privilege repository admin. |
| <a name="output_privilege_repository_content_selector_name"></a> [privilege\_repository\_content\_selector\_name](#output\_privilege\_repository\_content\_selector\_name) | The name of the privilege repository content selector. |
| <a name="output_privilege_repository_view_name"></a> [privilege\_repository\_view\_name](#output\_privilege\_repository\_view\_name) | The name of the privilege repository view. |
| <a name="output_privilege_repository_wildcard_name"></a> [privilege\_repository\_wildcard\_name](#output\_privilege\_repository\_wildcard\_name) | The name of the privilege wildcard. |
| <a name="output_privilege_script_name"></a> [privilege\_script\_name](#output\_privilege\_script\_name) | The name of the privilege script. |

## Authors

Module is maintained by [DevOps IA](https://github.com/devops-ia) with help from [these awesome contributors](https://github.com/nexus-module/terraform-nexus-privilege/graphs/contributors).
