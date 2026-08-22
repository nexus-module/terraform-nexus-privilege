module "wrapper" {
  source = "../../modules/nexus-privilege-wildcard"

  for_each = var.items

  description = try(each.value.description, var.defaults.description, "")
  name        = try(each.value.name, var.defaults.name)
  pattern     = try(each.value.pattern, var.defaults.pattern, "")
}
