# See https://www.terraform.io/docs/configuration/variables.html
variable "ami_regex" {
  description = "List of regex pattern to find an AWS AMI"
  type    = list(string)
}

variable "ami_owners" {
  description = "List of AMI owners"
  type    = list(string)
}

variable "aws_instance_type" {
  description = "AWS instance type (https://aws.amazon.com/ec2/instance-types/)"
}

variable "aws_instance_tag" {
  description = "AWS instance tag"
}