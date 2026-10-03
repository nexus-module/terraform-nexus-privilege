mock_provider "nexus" {}

run "maps_all_inputs_to_resource" {
  command = plan

  variables {
    actions          = ["READ"]
    content_selector = "test-content-selector"
    description      = "test-description"
    format           = "test-format"
    name             = "test-name"
    repository       = "test-repository"
  }

  assert {
    condition     = nexus_privilege_repository_content_selector.main.name == var.name
    error_message = "name does not match var.name"
  }

  assert {
    condition     = nexus_privilege_repository_content_selector.main.description == var.description
    error_message = "description does not match var.description"
  }

  assert {
    condition     = nexus_privilege_repository_content_selector.main.actions == var.actions
    error_message = "actions does not match var.actions"
  }

  assert {
    condition     = nexus_privilege_repository_content_selector.main.repository == var.repository
    error_message = "repository does not match var.repository"
  }

  assert {
    condition     = nexus_privilege_repository_content_selector.main.format == var.format
    error_message = "format does not match var.format"
  }

  assert {
    condition     = nexus_privilege_repository_content_selector.main.content_selector == var.content_selector
    error_message = "content_selector does not match var.content_selector"
  }

}

run "omits_optional_blocks" {
  command = plan

  variables {
    actions          = ["READ"]
    content_selector = "test-content-selector"
    format           = "test-format"
    name             = "test-name"
    repository       = "test-repository"
  }

  assert {
    condition     = nexus_privilege_repository_content_selector.main.name == var.name
    error_message = "name does not match var.name"
  }

}
