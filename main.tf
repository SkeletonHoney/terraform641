provider "aws" {
  region 	= "us-east-1"
  profile	= "rogers_ryan"
}
/*
resource "aws_security_group" "allow_ssh" {
  name		= "rrogers_SSH"
  description	= "allows SSH from rrogers"
  vpc_id	= "vpc-dc3515a6"
  ingress {
    from_port	= 22
    to_port	= 22
    protocol	= "tcp"
    cidr_blocks	= ["71.88.34.38/32"]
  }
  egress {
    from_port	= 0
    to_port	= 0
    protocol	= "-1"
    cidr_blocks	= ["0.0.0.0/0"]
  }
}
*/
resource "aws_instance" "example" {
  ami          		= "ami-0a887e401f7654935"
  instance_type		= "t2.micro"
  key_name		= "rrogers_NV"
  security_groups 	= [ "rrogers_SSH" ]
  tags = {
    Name = "rrogers_tf"
  }
}
