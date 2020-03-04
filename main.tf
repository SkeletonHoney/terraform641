provider "aws" {
  region = "us-east-1"
  profile= "rogers_ryan"
}

resource "aws_instance" "example" {
  ami           = "ami-0a887e401f7654935"
  instance_type = "t2.micro"
  tags = {
    Name = "rrogers_tf_test"
  }
}
