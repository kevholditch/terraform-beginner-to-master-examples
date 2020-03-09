
variable "any_example" {
  type = any
  default = {
    field1 = "foo"
    field2  = "bar"
  }
}

output "any_example" {
  value = var.any_example
}

