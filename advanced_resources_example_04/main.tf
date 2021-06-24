provider "aws" {
  region  = "eu-west-1"
}

resource "aws_sqs_queue" "queue" {
    name = "queue"

    lifecycle {
      prevent_destroy = true
    }
}