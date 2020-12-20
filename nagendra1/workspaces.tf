provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6HVQRT7QSBAFVFP7"
  secret_key = "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"
}
variable "mappi" {
  type = map
  default = {
    default = "t2.small"
    prod    = "t2.large"
    test    = "t2.medium"
    dev     = "t2.small"
  }
}

resource aws_instance "myec3" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = lookup(var.mappi, dev)
}
