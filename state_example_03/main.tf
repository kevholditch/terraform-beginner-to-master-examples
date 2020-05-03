
provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

resource "aws_sqs_queue" "my_queue" {
  name = "my_queue"
}



