provider "aws" {
  region     = "us-east-1"
  access_key = "
}
variable "listti" {
  type    = list
  default = ["name1", "name2", "name3"]
}
resource aws_instance "myec2" {
  ami           = "ami-96fda3c22c1c990a"
  instance_type = "t2.small"
  tags = {
    default = {
      name = element(var.listti, 0)
    }
  }
}
