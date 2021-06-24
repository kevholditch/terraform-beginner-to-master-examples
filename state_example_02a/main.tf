
provider "aws" {
  region  = "eu-west-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "vpc"
  }
}

