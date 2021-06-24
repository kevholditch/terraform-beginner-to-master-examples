

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_sqs_queue" "queue" {
  name = "${terraform.workspace}-queue"
}