terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1" 
}


resource "aws_instance" "web" {
  ami           =  "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
