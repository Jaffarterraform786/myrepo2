provider "aws" {
  region     = "us-east-1"
  access_key = ""
}
locals {
  common_tags = {
    users = "devteam"
  }

}


resource aws_instance "myec2" {
  ami           = "ami-96fda3c22c1c990a"
  instance_type = "t2.small"
  tags          = local.common_tags
}

resource aws_instance "myec3" {
  ami           = "ami-96fda3c22c1c990a"
  instance_type = "t2.small"
  tags          = local.common_tags
}
