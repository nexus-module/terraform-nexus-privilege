module "wrapper" {
  source = "../"

  for_each = var.items

  nexus_privilege_application                 = try(each.value.nexus_privilege_application, var.defaults.nexus_privilege_application, [])
  nexus_privilege_repository_admin            = try(each.value.nexus_privilege_repository_admin, var.defaults.nexus_privilege_repository_admin, [])
  nexus_privilege_repository_content_selector = try(each.value.nexus_privilege_repository_content_selector, var.defaults.nexus_privilege_repository_content_selector, [])
  nexus_privilege_repository_view             = try(each.value.nexus_privilege_repository_view, var.defaults.nexus_privilege_repository_view, [])
  nexus_privilege_script                      = try(each.value.nexus_privilege_script, var.defaults.nexus_privilege_script, [])
  nexus_privilege_wildcard                    = try(each.value.nexus_privilege_wildcard, var.defaults.nexus_privilege_wildcard, [])
}
