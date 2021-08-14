data "template_file" "download_certs" {
  template = file("${path.module}/templates/download_certs.sh.tpl")

  vars = {
    CERTS_BUCKET_NAME = module.certs.s3_bucket_id
  }
}
