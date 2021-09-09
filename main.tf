provider "aws" {
    region = "ap-northeast-2"
}

data "terraform_remote_state" "test_instance" {
    backend = "remote"
    config = {
        organization = "odarkTeraTest"
        workspaces = {
            name = "terraformTest"
        }
    }
}