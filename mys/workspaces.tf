provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
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
  instance_type = lookup(var.mappi, terraform.workspace)
}
