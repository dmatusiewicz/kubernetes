resource "aws_security_group_rule" "bastion_allow_deployer_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = var.client_ips
  security_group_id = aws_security_group.bastion.id
}

resource "aws_security_group_rule" "bastion_allow_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.bastion.id
}

resource "aws_security_group_rule" "kubernetes_allow_bastion_ssh" {
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  source_security_group_id = aws_security_group.bastion.id
  security_group_id        = aws_security_group.kubernetes.id
}

resource "aws_security_group_rule" "kubernetes_allow_outbound" {
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.kubernetes.id
}

resource "aws_security_group_rule" "kubernetes_allow_kubernetes" {
  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "-1"
  source_security_group_id = aws_security_group.kubernetes.id
  security_group_id        = aws_security_group.kubernetes.id
}
