

provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

variable "bucket_name" {
  description = "the name of the bucket you wish to create"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}"
}