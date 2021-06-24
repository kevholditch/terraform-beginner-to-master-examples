

provider "aws" {
  region  = "eu-west-1"
}

variable "bucket_name" {
  description = "the name of the bucket you wish to create"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_name}"
}