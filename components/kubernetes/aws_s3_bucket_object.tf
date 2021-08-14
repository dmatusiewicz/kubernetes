resource "aws_s3_bucket_object" "ca_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "ca.pem"
  source = "certs/ca.pem"
}

resource "aws_s3_bucket_object" "ca_key_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "ca-key.pem"
  source = "certs/ca-key.pem"
}

resource "aws_s3_bucket_object" "ip-10-0-11-21_key_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "ip-10-0-11-21.eu-west-1.compute.internal-key.pem"
  source = "certs/ip-10-0-11-21.eu-west-1.compute.internal-key.pem"
}

resource "aws_s3_bucket_object" "ip-10-0-11-21_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "ip-10-0-11-21.eu-west-1.compute.internal.pem"
  source = "certs/ip-10-0-11-21.eu-west-1.compute.internal.pem"
}

resource "aws_s3_bucket_object" "ip-10-0-12-21_key_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "ip-10-0-12-21.eu-west-1.compute.internal-key.pem"
  source = "certs/ip-10-0-12-21.eu-west-1.compute.internal-key.pem"
}

resource "aws_s3_bucket_object" "ip-10-0-12-21_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "ip-10-0-12-21.eu-west-1.compute.internal.pem"
  source = "certs/ip-10-0-12-21.eu-west-1.compute.internal.pem"
}

resource "aws_s3_bucket_object" "kubernetes_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "kubernetes.pem"
  source = "certs/kubernetes.pem"
}

resource "aws_s3_bucket_object" "kubernetes_key_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "kubernetes-key.pem"
  source = "certs/kubernetes-key.pem"
}

resource "aws_s3_bucket_object" "service_account_key_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "service-account-key.pem"
  source = "certs/service-account-key.pem"
}

resource "aws_s3_bucket_object" "service_account_pem" {
  bucket = module.certs.s3_bucket_id
  key    = "service-account.pem"
  source = "certs/service-account.pem"
}
