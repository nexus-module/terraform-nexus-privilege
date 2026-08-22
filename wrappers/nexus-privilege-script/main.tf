module "wrapper" {
  source = "../../modules/nexus-privilege-script"

  for_each = var.items

  actions     = try(each.value.actions, var.defaults.actions)
  description = try(each.value.description, var.defaults.description, "")
  name        = try(each.value.name, var.defaults.name)
  script_name = try(each.value.script_name, var.defaults.script_name)
}
