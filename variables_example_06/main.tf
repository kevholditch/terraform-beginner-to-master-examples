
variable "a" {
  type    = list(string)
  default = ["foo", "bar", "baz"]
}

output "a" {
  value = var.a
}

output "b" {
  value = element(var.a, 1)
}

output "c" {
  value = length(var.a)
}
