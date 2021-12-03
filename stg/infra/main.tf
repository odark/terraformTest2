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

resouce "aws_instance" "app_server" {
    ami = "ami-0263588f2531a56bd"
    instance_type="t2.micro"

    tags = {
        Name = "ExampleAppSerververInstance"
    }
}