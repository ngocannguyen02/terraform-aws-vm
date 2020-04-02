locals {
    region = "us-east-1"
}

provider "aws" {
  region = local.region
}

data "aws_ami" "your_image" {
  most_recent = true

  filter {
    name   = "name"
    values = var.ami_regex
  }

  owners = var.ami_owners
}

resource "aws_instance" "your_ec2" {
  ami = data.aws_ami.your_image.id
  instance_type = var.aws_instance_type
  tags = {
    Name = var.aws_instance_tag
  }
}