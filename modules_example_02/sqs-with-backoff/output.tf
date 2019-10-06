
output "queue" {
  value = aws_sqs_queue.sqs
}

output "dead_letter_queue" {
  value = aws_sqs_queue.sqs_dead_letter
}
