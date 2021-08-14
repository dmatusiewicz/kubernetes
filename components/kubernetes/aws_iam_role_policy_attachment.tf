resource "aws_iam_role_policy_attachment" "allow_all_s3" {
  role       = aws_iam_role.kubernetes.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}
