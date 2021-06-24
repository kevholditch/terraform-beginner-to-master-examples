
provider "aws" {
  region  = "eu-west-1"
}

resource "aws_sqs_queue" "my_queue" {
  name = "my_queue"
}



