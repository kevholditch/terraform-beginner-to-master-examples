output "command" {
  value = "curl http://${aws_instance.nginx.public_ip}"
}