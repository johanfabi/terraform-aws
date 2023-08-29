# main.tf 
terraform {
  backend "s3" {
    bucket = "jf-terraform-bucket"
    key    = "aws-ec2-remote/terraform.tfstate"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}

resource "aws_instance" "ec2_example" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_pair
  security_groups = var.security_groups
  tags = {
    Name = var.instance_name
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("../key.pem")
    host        = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "echo '****************************************'",
      "echo 'HOLA USUARIO DESDE AWS'",
      "hostname",
      "uptime",
      "echo '****************************************'",
    ]
  }
}