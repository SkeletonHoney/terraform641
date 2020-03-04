provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-002cc39e7bf021a77"
  instance_type = "t2.micro"

  tags = {
    Name = "rrogers_test"
  }
}
