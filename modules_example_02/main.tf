
provider "aws" {
  region  = "eu-west-1"
  version = "~> 2.27"
}

resource "aws_security_group" "group_1" {
  name = "security group 1"
}

resource "aws_security_group" "group_2" {
  name = "security group 2"
}

resource "aws_security_group" "group_3" {
  name = "security group 3"
}

module "cross_talk_groups" {
  source            = "./cross-talk-3-way"
  security_group_1  = aws_security_group.group_1
  security_group_2  = aws_security_group.group_2
  security_group_3  = aws_security_group.group_3
  port              = 8500
  protocol          = "tcp"
}
