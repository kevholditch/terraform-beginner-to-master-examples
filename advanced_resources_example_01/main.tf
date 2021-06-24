

provider "aws" {
  region  = "eu-west-1"
}

resource "aws_sqs_queue" "queue0" {
    name = "queue-0"
}

resource "aws_sqs_queue" "queue1" {
    name = "queue-1"
}

resource "aws_sqs_queue" "queue2" {
    name = "queue-2"
}

resource "aws_sqs_queue" "queue3" {
    name = "queue-3"
}

output "queue-0-name" {
  value = aws_sqs_queue.queue0.name
}
