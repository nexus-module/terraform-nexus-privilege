mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    actions     = ["READ"]
    description = "test-description"
    format      = "test-format"
    name        = "test-name"
    repository  = "test-repository"
  }

  assert {
    condition     = nexus_privilege_repository_view.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_privilege_repository_view.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_privilege_repository_view.main.actions == var.actions
    error_message = "actions does not match var.actions"
  }

  assert {
    condition     = nexus_privilege_repository_view.main.repository == var.repository
    error_message = "repository does not match var.repository"
  }

  assert {
    condition     = nexus_privilege_repository_view.main.format == var.format
    error_message = "format does not match var.format"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    actions    = ["READ"]
    format     = "test-format"
    name       = "test-name"
    repository = "test-repository"
  }

  assert {
    condition     = nexus_privilege_repository_view.main.name == var.name
    error_message = "name does not match var.name"
  }

}
