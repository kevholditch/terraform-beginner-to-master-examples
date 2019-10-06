
module "first_to_second" {
  source            = "../cross-talk"
  security_group_1  = var.security_group_1
  security_group_2  = var.security_group_2
  protocol          = var.protocol
  port              = var.port
}

module "second_to_third" {
  source            = "../cross-talk"
  security_group_1  = var.security_group_2
  security_group_2  = var.security_group_3
  protocol          = var.protocol
  port              = var.port
}

module "first_to_third" {
  source            = "../cross-talk"
  security_group_1  = var.security_group_1
  security_group_2  = var.security_group_3
  protocol          = var.protocol
  port              = var.port
}
