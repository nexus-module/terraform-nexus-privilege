mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    actions     = ["READ"]
    description = "test-description"
    name        = "test-name"
    script_name = "test-script-name"
  }

  assert {
    condition     = nexus_privilege_script.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_privilege_script.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_privilege_script.main.actions == var.actions
    error_message = "actions does not match var.actions"
  }

  assert {
    condition     = nexus_privilege_script.main.script_name == var.script_name
    error_message = "script_name does not match var.script_name"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    actions     = ["READ"]
    name        = "test-name"
    script_name = "test-script-name"
  }

  assert {
    condition     = nexus_privilege_script.main.name == var.name
    error_message = "name does not match var.name"
  }

}
