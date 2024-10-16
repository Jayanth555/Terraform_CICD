provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "${var.ami_id}"
    instance_type = "t2.micro"
    
  tags = {
    Name = "MyEC2Instance"
  }
} 