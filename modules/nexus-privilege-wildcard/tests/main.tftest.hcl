mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    description = "test-description"
    name        = "test-name"
    pattern     = "test-pattern"
  }

  assert {
    condition     = nexus_privilege_wildcard.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_privilege_wildcard.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_privilege_wildcard.main.pattern == var.pattern
    error_message = "pattern does not match var.pattern"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    name = "test-name"
  }

  assert {
    condition     = nexus_privilege_wildcard.main.name == var.name
    error_message = "name does not match var.name"
  }

}
