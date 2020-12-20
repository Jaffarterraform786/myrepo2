provider "aws" {
  region     = "us-east-1"
  access_key = ""
}
variable "ports" {
  type    = list
  default = [22, 2049, 80]
}
resource aws_security_group "mysec" {
  name = "prodsecgroups"
  dynamic "ingress" {
    for_each = var.ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }
  }
}
