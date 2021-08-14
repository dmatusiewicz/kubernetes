data "aws_ami" "amazon_linux" {
  most_recent = true
  name_regex  = "amzn2-ami-hvm-2"
  owners      = ["amazon"]

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}
