mock_provider "nexus" {}

run "creates_one_module_per_item" {
  command = plan

  variables {
    nexus_privilege_application = [
      {
        name        = "test-name-a"
        description = "test-description-a"
        actions     = ["READ"]
        domain      = "test-domain-a"
      },
      {
        name        = "test-name-b"
        description = "test-description-b"
        actions     = ["READ"]
        domain      = "test-domain-b"
      }
    ]
    nexus_privilege_repository_admin = [
      {
        name        = "test-name-a"
        description = "test-description-a"
        actions     = ["READ"]
        repository  = "test-repository-a"
        format      = "test-format-a"
      },
      {
        name        = "test-name-b"
        description = "test-description-b"
        actions     = ["READ"]
        repository  = "test-repository-b"
        format      = "test-format-b"
      }
    ]
    nexus_privilege_repository_content_selector = [
      {
        name             = "test-name-a"
        description      = "test-description-a"
        actions          = ["READ"]
        repository       = "test-repository-a"
        format           = "test-format-a"
        content_selector = "test-content-selector-a"
      },
      {
        name             = "test-name-b"
        description      = "test-description-b"
        actions          = ["READ"]
        repository       = "test-repository-b"
        format           = "test-format-b"
        content_selector = "test-content-selector-b"
      }
    ]
    nexus_privilege_repository_view = [
      {
        name        = "test-name-a"
        description = "test-description-a"
        actions     = ["READ"]
        repository  = "test-repository-a"
        format      = "test-format-a"
      },
      {
        name        = "test-name-b"
        description = "test-description-b"
        actions     = ["READ"]
        repository  = "test-repository-b"
        format      = "test-format-b"
      }
    ]
    nexus_privilege_script = [
      {
        name        = "test-name-a"
        description = "test-description-a"
        actions     = ["READ"]
        script_name = "test-script-name-a"
      },
      {
        name        = "test-name-b"
        description = "test-description-b"
        actions     = ["READ"]
        script_name = "test-script-name-b"
      }
    ]
    nexus_privilege_wildcard = [
      {
        name        = "test-name-a"
        description = "test-description-a"
        pattern     = "test-pattern-a"
      },
      {
        name        = "test-name-b"
        description = "test-description-b"
        pattern     = "test-pattern-b"
      }
    ]
  }

  assert {
    condition     = length(module.nexus_privilege_application) == 2
    error_message = "nexus_privilege_application must create one nexus-privilege-application per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_privilege_application), k)])
    error_message = "nexus_privilege_application must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_privilege_repository_admin) == 2
    error_message = "nexus_privilege_repository_admin must create one nexus-privilege-repository-admin per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_privilege_repository_admin), k)])
    error_message = "nexus_privilege_repository_admin must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_privilege_repository_content_selector) == 2
    error_message = "nexus_privilege_repository_content_selector must create one nexus-privilege-repository-content-selector per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_privilege_repository_content_selector), k)])
    error_message = "nexus_privilege_repository_content_selector must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_privilege_repository_view) == 2
    error_message = "nexus_privilege_repository_view must create one nexus-privilege-repository-view per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_privilege_repository_view), k)])
    error_message = "nexus_privilege_repository_view must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_privilege_script) == 2
    error_message = "nexus_privilege_script must create one nexus-privilege-script per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_privilege_script), k)])
    error_message = "nexus_privilege_script must be keyed by name"
  }

  assert {
    condition     = length(module.nexus_privilege_wildcard) == 2
    error_message = "nexus_privilege_wildcard must create one nexus-privilege-wildcard per item"
  }

  assert {
    condition     = alltrue([for k in ["test-name-a", "test-name-b"] : contains(keys(module.nexus_privilege_wildcard), k)])
    error_message = "nexus_privilege_wildcard must be keyed by name"
  }

}

run "creates_nothing_by_default" {
  command = plan

  assert {
    condition     = length(module.nexus_privilege_application) == 0
    error_message = "nexus_privilege_application must be empty by default"
  }

  assert {
    condition     = length(module.nexus_privilege_repository_admin) == 0
    error_message = "nexus_privilege_repository_admin must be empty by default"
  }

  assert {
    condition     = length(module.nexus_privilege_repository_content_selector) == 0
    error_message = "nexus_privilege_repository_content_selector must be empty by default"
  }

  assert {
    condition     = length(module.nexus_privilege_repository_view) == 0
    error_message = "nexus_privilege_repository_view must be empty by default"
  }

  assert {
    condition     = length(module.nexus_privilege_script) == 0
    error_message = "nexus_privilege_script must be empty by default"
  }

  assert {
    condition     = length(module.nexus_privilege_wildcard) == 0
    error_message = "nexus_privilege_wildcard must be empty by default"
  }

}
