terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.43.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

resource "aws_iam_group" "gp1" {
    name = "manager"
  lifecycle {
    prevent_destroy = false
  }
}
/*
resource "aws_iam_user" "usr1" {
name = "nana2024"
depends_on = [ aws_iam_group.gp1 ]
}
*/

 resource "aws_instance" "server1" {
  ami = "ami-i-06121f50ae66202de"
  instance_type = "t3.small"
  key_name = "fufupa"
}
