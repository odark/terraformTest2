output "test1" {
    value = "${aws_instance.web1.ami}"#data.terraform_remote_state.test_instance.ec2_name

}