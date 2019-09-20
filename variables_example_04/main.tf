
variable "instance_map" {}
variable "environment_type" {}

output "selected_instance" {
  value = var.instance_map[var.environment_type]
}