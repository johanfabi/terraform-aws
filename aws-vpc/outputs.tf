# outputs.tf 

data "aws_vpc" "vpc_example" {
    id = aws_vpc.vpc_example.id
}

