
provider "aws" {
  region = "eu-west-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

locals {
  vpc_arn = aws_vpc.my_vpc.arn
}

output "vpc_arn" {
  value = local.vpc_arn
}

