
provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

module "work_queue" {
  source      = "github.com/kevholditch/sqs-with-backoff?ref=0.0.1"
  queue_name  = "work-queue"
}

output "work_queue" {
  value = module.work_queue.queue
}

output "work_queue_dead_letter_queue" {
  value = module.work_queue.dead_letter_queue
}

