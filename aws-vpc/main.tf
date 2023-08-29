# main.tf 
terraform {
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

resource "aws_vpc" "vpc_example" {
    cidr_block = var.cidr_block

    tags = {
        Name = var.vpc_name
    }
}