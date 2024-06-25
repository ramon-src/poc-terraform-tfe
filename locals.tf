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
        "poc-terraform-workspace" = {
            description = "Example description of workspace"
            execution_mode = "local"
            project_id = module.project["poc-terraform-project"].id
        }
    }
}