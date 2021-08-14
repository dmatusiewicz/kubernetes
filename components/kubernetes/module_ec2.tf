module "bastion" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  version                     = "~> 2.0"
  iam_instance_profile        = aws_iam_instance_profile.kubernetes.id
  name                        = local.bastion_name
  instance_count              = 1
  vpc_security_group_ids      = [aws_security_group.bastion.id]
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.deployer.key_name
  subnet_ids                  = module.vpc.public_subnets
  associate_public_ip_address = true
  tags                        = merge(local.default_tags, { "Role" = "worker" })
  user_data_base64            = data.template_cloudinit_config.config.rendered

}

module "controllers" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name                   = local.kubernetes_controller_name
  instance_count         = 0
  private_ips            = ["10.0.11.11", "10.0.12.11"]
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  subnet_ids             = module.vpc.private_subnets
  tags                   = merge(local.default_tags, { "Role" = "controller" })
}

module "workers" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.0"

  name                   = local.kubernetes_worker_name
  instance_count         = 0
  private_ips            = ["10.0.11.21", "10.0.12.21"]
  vpc_security_group_ids = [aws_security_group.kubernetes.id]
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.deployer.key_name
  subnet_ids             = module.vpc.private_subnets
  tags                   = merge(local.default_tags, { "Role" = "worker" })
}
