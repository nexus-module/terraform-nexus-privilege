mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    actions     = ["READ"]
    description = "test-description"
    domain      = "test-domain"
    name        = "test-name"
  }

  assert {
    condition     = nexus_privilege_application.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_privilege_application.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_privilege_application.main.actions == var.actions
    error_message = "actions does not match var.actions"
  }

  assert {
    condition     = nexus_privilege_application.main.domain == var.domain
    error_message = "domain does not match var.domain"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    actions = ["READ"]
    domain  = "test-domain"
    name    = "test-name"
  }

  assert {
    condition     = nexus_privilege_application.main.name == var.name
    error_message = "name does not match var.name"
  }

}
