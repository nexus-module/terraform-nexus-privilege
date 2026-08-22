module "wrapper" {
  source = "../../modules/nexus-privilege-repository-content-selector"

  for_each = var.items

  actions          = try(each.value.actions, var.defaults.actions)
  content_selector = try(each.value.content_selector, var.defaults.content_selector)
  description      = try(each.value.description, var.defaults.description, "")
  format           = try(each.value.format, var.defaults.format)
  name             = try(each.value.name, var.defaults.name)
  repository       = try(each.value.repository, var.defaults.repository)
}
