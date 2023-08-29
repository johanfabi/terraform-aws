# variables.tf 
variable "region" {
  type    = string
  default = "us-east-1"
}

variable "ami" {
  type    = string
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_pair" {
  type    = string
  default = "key-test"
}

variable "security_groups" {
  type    = list(string)
  default = ["launch-wizard-1"]
}

variable "instance_name" {
  type    = string
  default = "ec2-remote-exec"
}


