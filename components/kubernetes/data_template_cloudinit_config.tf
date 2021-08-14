data "template_cloudinit_config" "config" {
  gzip          = true
  base64_encode = true

  # Main cloud-config configuration file.
  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.download_certs.rendered
  }
}
