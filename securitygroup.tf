resource "aws_security_group" "stack-sg" {
  name        = "JenkinsSG1"
  description = "ssh"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "ssh" {
  security_group_id = aws_security_group.stack-sg.id
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 22
  to_port           = 22
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "http" {
  security_group_id = aws_security_group.stack-sg.id
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 80
  to_port           = 80
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "MySQL" {
  security_group_id = aws_security_group.stack-sg.id
  type              = "ingress"
  protocol          = "tcp"
  from_port         = 3306
  to_port           = 3306
  cidr_blocks       = ["0.0.0.0/0"]
}




resource "aws_security_group_rule" "egress" {
  security_group_id = "${aws_security_group.stack-sg.id}"
  type              = "egress"
  protocol          = "-1"
  from_port         = 0
  to_port           = 0
  cidr_blocks       = ["0.0.0.0/0"]
}