
variable "person" {
  type = object({ name = string, age = number })
  default = {
    name = "Bob"
    age  = 10
  }
}

output "person" {
  value = var.person
}

variable "person_with_address" {
  type = object({ name = string, age = number, address = object({ line1 = string, line2 = string, county = string, postcode = string }) })
  default = {
    name = "Jim"
    age = 21
    address = {
      line1 = "1 the road"
      line2 = "St Ives"
      county = "Cambridgeshire"
      postcode = "CB1 2GB"
    }
  }
}

output "person_with_address" {
  value = var.person_with_address
}
