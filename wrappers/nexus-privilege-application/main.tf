module "wrapper" {
  source = "../../modules/nexus-privilege-application"

  for_each = var.items

  actions     = try(each.value.actions, var.defaults.actions)
  description = try(each.value.description, var.defaults.description, "")
  domain      = try(each.value.domain, var.defaults.domain)
  name        = try(each.value.name, var.defaults.name)
}
