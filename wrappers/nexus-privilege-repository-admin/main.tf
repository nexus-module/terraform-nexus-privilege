module "wrapper" {
  source = "../../modules/nexus-privilege-repository-admin"

  for_each = var.items

  actions     = try(each.value.actions, var.defaults.actions)
  description = try(each.value.description, var.defaults.description, "")
  format      = try(each.value.format, var.defaults.format)
  name        = try(each.value.name, var.defaults.name)
  repository  = try(each.value.repository, var.defaults.repository)
}
