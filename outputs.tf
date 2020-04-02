# Output doc: https://www.terraform.io/docs/configuration/outputs.html
output "instance_id" {
  description = "AWS instance ID"
  value       = "${aws_instance.your_ec2.id}"
}

output "instance_type" {
  description = "AWS instance type"
  value       = "${aws_instance.your_ec2.instance_type}"
}

output "instance_ami" {
  description = "AWS instance AMI"
  value       = "${aws_instance.your_ec2.ami}"
}