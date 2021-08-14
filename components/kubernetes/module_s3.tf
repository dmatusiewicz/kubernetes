module "certs" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = local.cert_bucket_name
  acl    = "private"

  versioning = {
    enabled = false
  }
  block_public_acls   = true
  block_public_policy = true
  tags                = local.default_tags

}
