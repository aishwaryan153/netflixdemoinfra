provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-00a929b66ed6e0de6"
instance_type = "t2.medium"
key_name = "new"
vpc_security_group_ids = ["sg-035024ae7cf33b5b6"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "AppServer-1", "AppServer-2", "Monitoring server"]
}
