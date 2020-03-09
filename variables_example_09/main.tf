
variable "my_map" {
  type    = map(number)
  default = {
    "alpha" = 2
    "bravo" = 3
  }
}

output "map" {
  value = var.my_map
}

output "alpha_value" {
  value = var.my_map["alpha"]
}


