terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
    region = "ap-northeast-2"
    
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

resource "aws_instance" "app_server" {
    ami = "ami-0263588f2531a56bd"
    instance_type="t2.micro"

    tags = {
        Name = "ExampleAppSerververInstance"
    }
}