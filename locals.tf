locals {
    project = {
        "poc-terraform-project" = {
            description = "Example description of project"
        }
        "poc-terraform-project2" = {
            description = "Example description of project"
        }
    }
    workspace = {
        "poc-workspace" = {
            description = "Example description of workspace"
            execution_mode = "remote"
            project_id = module.project["poc-terraform-project"].id
            vcs_repo_identifier = "ramon-src/poc-terraform-tfe"
        }
    }
}