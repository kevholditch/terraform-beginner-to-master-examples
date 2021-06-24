
provider "aws" {
  region  = "eu-west-1"
}

provider "aws" {
  region  = "eu-west-2"
  alias   = "london"
}

resource "aws_vpc" "ireland_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "london_vpc" {
  cidr_block = "10.1.0.0/16"
  provider   = aws.london
}