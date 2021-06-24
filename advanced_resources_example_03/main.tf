
provider "aws" {
  region  = "eu-west-1"
}

locals {
  fruit = toset(["apple", "orange", "banana"])
}

resource "aws_sqs_queue" "queues" {
    for_each = local.fruit
    name = "queue-${each.key}"
}

output "queue-apple-name" {
  value = aws_sqs_queue.queues["apple"].name
}