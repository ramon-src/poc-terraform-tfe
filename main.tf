// modules dont have providers

module "project" {
    for_each = local.project
    source  = "ALT-F4-LLC/project/tfe"
    version = "0.4.0" 

    name              = each.key
    organization_name = var.organization_name
    description       = each.value.description
}

module "workspace" {
    for_each = local.workspace
    source  = "ALT-F4-LLC/workspace/tfe"
    version = "0.6.0"

    name              = each.key
    description       = each.value.description
    execution_mode    = each.value.execution_mode
    organization_name = var.organization_name
    project_id        = each.value.project_id

    vcs_repo = {
      github_app_installation_id = data.tfe_github_app_installation.this.id 
      identifier = each.value.vcs_repo_identifier
    }
}
