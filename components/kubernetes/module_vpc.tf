module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.vpc_name
  cidr = var.vpc_cidr

  azs                  = data.aws_availability_zones.available.names
  private_subnets      = [cidrsubnet(var.vpc_cidr, 8, 11), cidrsubnet(var.vpc_cidr, 8, 12), cidrsubnet(var.vpc_cidr, 8, 13)]
  public_subnets       = [cidrsubnet(var.vpc_cidr, 8, 21), cidrsubnet(var.vpc_cidr, 8, 22), cidrsubnet(var.vpc_cidr, 8, 23)]
  enable_dns_hostnames = true
  enable_dns_support   = true
  enable_nat_gateway   = true

  tags = local.default_tags
}
