variable "project" {
  type        = string
  description = "Name of the project where this modules is used"
}

variable "component" {
  type        = string
  description = "Name of component where this modules is used"
}

variable "environment" {
  type        = string
  description = "Name of environment where this module is used"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block"
}

variable "admin_ips" {
  type        = list(string)
  description = "Admin IP-s"
}
