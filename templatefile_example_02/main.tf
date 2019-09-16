
output "rendered_template" {
  value = templatefile("./backends.tpl", { port = 8080, ip_addrs = ["10.0.0.1", "10.0.0.2"] })
}