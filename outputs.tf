output "test1" {
    value = "${data.terraform_remote_state.test_instance.outputs.ec2_name}"

}

output "test2" {
    value="test2"
}

output "test3" {
    value="test3"
}

output "test4" {
    value="test4"
}