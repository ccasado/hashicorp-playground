terraform {

  backend "remote" {
    organization = "ccasado"
    workspaces {
      name = "Hashicorp-Playground"
    }
  }

  required_providers {
    aws = {
      # from https://registry.terraform.io/providers/hashicorp/aws/latest
      source  = "hashicorp/aws"
      version = "~> 3.45"
    }
  }

  required_version = ">= 0.14.9"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
