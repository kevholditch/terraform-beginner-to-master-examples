
provider "aws" {
  region  = "eu-west-1"
}

resource "aws_iam_policy" "my_bucket_policy" {
  name = "list-buckets-policy"

  policy = file("./policy.iam")
}