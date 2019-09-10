
provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

data "aws_s3_bucket" "bucket" {
  bucket = "kevholditch-already-exists"
}

resource "aws_iam_policy" "my_bucket_policy" {
  name = "my-bucket-policy"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${data.aws_s3_bucket.bucket.arn}"
      ]
    }
  ]
}
POLICY
}