
provider "aws" {
  region = "eu-west-1"
}

locals {
  first_part  = "hello"
  second_part = "${local.first_part}_there"
  bucket_name = "${local.second_part}_how_are_you_today"
}

resource "aws_s3_bucket" "bucket" {
  bucket = local.bucket_name
}
