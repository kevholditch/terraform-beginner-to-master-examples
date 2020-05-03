
provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "example"
  }

}


