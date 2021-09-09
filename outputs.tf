output "test" {
    value = "${data.terraform_remote_state.test_instance.ec2_name}"
}