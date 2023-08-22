# variables.tf 

variable "region" {
    type    = string
    default = "us-east-1"
}

variable "cidr_block" {
    type    = string
    default = "172.16.0.0/16"
}

variable "vpc_name" {
    type    = string
    default = "vpc_example"
}

