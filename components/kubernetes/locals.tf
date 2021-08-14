locals {

  name_prefix                      = format("%s-%s-%s", var.project, var.component, var.environment)
  vpc_name                         = local.name_prefix
  bastion_name                     = "${local.name_prefix}-bastion"
  kubernetes_name                  = "${local.name_prefix}-kubernetes"
  kubernetes_controller_name       = "${local.name_prefix}-controller"
  kubernetes_worker_name           = "${local.name_prefix}-worker"
  cert_bucket_name                 = "${local.name_prefix}-certs"
  kubernetes_instance_profile_name = "${local.name_prefix}-kubernetes"
  kubernetes_role_name             = "${local.name_prefix}-kubernetes"
  default_tags = {
    "Project"     = var.project,
    "Component"   = var.component,
    "Environment" = var.environment
  }



}
