// modules dont have providers

module "project" {
    source  = "ALT-F4-LLC/project/tfe"
    version = "0.4.0" 

    name              = "poc-terraform-project"
    organization_name = var.organization_name
    description       = "something"
}

module "workspace" {
    source  = "ALT-F4-LLC/workspace/tfe"
    version = "0.6.0"

    name              = "poc-terraform-workspace"
    description       = "something"
    execution_mode    = "local"
    organization_name = var.organization_name
    project_id        = module.project.id
}