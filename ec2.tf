terraform {
  cloud {
    organization = "tempasd"

    workspaces {
      name = "devops"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""

}

resource "aws_instance" "myec2" {
  ami           = "ami-0a3c3a20c09d6f377"
  instance_type = "t2.micro"

  tags = {
    Name = "bhai"
  }
}