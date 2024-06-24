terraform {
  cloud {
    organization = "ramon-terraform-course"

    workspaces {
      name = "poc-terraform-workspace"
    }
  }
}