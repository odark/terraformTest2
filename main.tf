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


resource "aws_instance" "web1" {
  ami           = "ami-0ba5cd124d7a79612"
  instance_type = "t2.micro"

  tags = {
    Name = "${data.terraform_remote_state.test_instance.ec2_id}"-1
  }
}