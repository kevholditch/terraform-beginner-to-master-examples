
variable "my_tup" {
  type    = tuple([number, string, bool])
  default = [4, "hello", false]
}

output "tup" {
  value = var.my_tup
}


