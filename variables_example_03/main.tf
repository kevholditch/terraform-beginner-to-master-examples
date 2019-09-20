

provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

variable "bucket_name" {
  description = "the name of the bucket you wish to create"
}

variable "bucket_suffix" {
  default = "-abcd"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}${var.bucket_suffix}"
}