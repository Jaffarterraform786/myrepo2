provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6HVQRT7QSBAFVFP7"
  secret_key = "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"
}
variable "listti" {
  type    = list
  default = ["name1", "name2", "name3"]
}
resource aws_instance "myec2" {
  ami           = "ami-96fda3c22c1c990a"
  instance_type = "t2.small"
  count         = 3
  tags = {

    name = element(var.listti, count.index)
  }
}
