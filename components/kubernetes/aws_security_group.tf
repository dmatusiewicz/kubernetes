resource "aws_security_group" "bastion" {
  name        = local.bastion_name
  description = "Bastion SG"
  vpc_id      = module.vpc.vpc_id

  tags = local.default_tags
}

resource "aws_security_group" "kubernetes" {
  name        = local.kubernetes_name
  description = "Kubernetes SG"
  vpc_id      = module.vpc.vpc_id

  tags = local.default_tags
}
