
locals {
  rendered = templatefile("./example.tpl", { name = "kevin", number = 7})
}

output "rendered_template" {
  value = local.rendered
}