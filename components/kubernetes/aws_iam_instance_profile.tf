resource "aws_iam_instance_profile" "kubernetes" {
  name = local.kubernetes_instance_profile_name
  role = aws_iam_role.kubernetes.name
  tags = local.default_tags
}
