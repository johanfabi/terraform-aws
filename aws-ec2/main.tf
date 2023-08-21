# main.tf 

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.12.0"
        }
    }
}

provider "aws" {
    # Configuration options
    region = var.region
}

resource "aws_instance" "ec2_example" {
    ami = "ami-08a52ddb321b32a8c"
    instance_type = "t2.micro"
    security_groups = "default"
    key_name = "key-test"
    tags = {
        name = "ec2_example"
    }
}