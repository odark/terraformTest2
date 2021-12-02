provider "aws" {
    region = var.region
}

data "terraform_remote_state" "stg_test_instance" {
    backend = "remote"
    config = {
        organization = "odarkTeraTest"
        workspaces = {
            name = "terraformTest"
        }
    }
}