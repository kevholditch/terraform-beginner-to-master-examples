
terraform {
  backend "s3" {
    bucket = "kevholditch-terraform-state"
    key    = "myproject.state"
    region = "eu-west-1"
  }
}
