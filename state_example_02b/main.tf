
provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

resource "aws_vpc" "main" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "vpc"
  }
}



