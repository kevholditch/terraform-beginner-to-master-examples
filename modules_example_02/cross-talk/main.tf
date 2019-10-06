
resource "aws_security_group_rule" "first_egress" {
  from_port                 = var.port
  to_port                   = var.port
  protocol                  = var.protocol
  security_group_id         = var.security_group_1.id
  type                      = "egress"
  source_security_group_id  = var.security_group_2.id
}

resource "aws_security_group_rule" "first_ingress" {
  from_port                 = var.port
  to_port                   = var.port
  protocol                  = var.protocol
  security_group_id         = var.security_group_1.id
  type                      = "ingress"
  source_security_group_id  = var.security_group_2.id
}


resource "aws_security_group_rule" "second_egress" {
  from_port                 = var.port
  to_port                   = var.port
  protocol                  = var.protocol
  security_group_id         = var.security_group_2.id
  type                      = "egress"
  source_security_group_id  = var.security_group_1.id
}

resource "aws_security_group_rule" "second_ingress" {
  from_port                 = var.port
  to_port                   = var.port
  protocol                  = var.protocol
  security_group_id         = var.security_group_2.id
  type                      = "ingress"
  source_security_group_id  = var.security_group_1.id
}

