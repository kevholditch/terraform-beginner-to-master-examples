resource "aws_sqs_queue" "sqs" {
  name                       = "awesome_co-${var.queue_name}"
  visibility_timeout_seconds = var.visibility_timeout
  delay_seconds              = 0
  max_message_size           = 262144
  message_retention_seconds  = 345600 # 4 days.
  receive_wait_time_seconds  = 20 # Enable long polling
  redrive_policy             = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.sqs_dead_letter.arn}\",\"maxReceiveCount\":${var.max_receive_count}}"
}

resource "aws_sqs_queue" "sqs_dead_letter" {
  name                       = "awsome_co-${var.queue_name}-dead-letter"
  delay_seconds              = 0
  max_message_size           = 262144
  message_retention_seconds  = 1209600 # 14 days.
  receive_wait_time_seconds  = 20
}

