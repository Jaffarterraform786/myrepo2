provider "aws" {
  region     = "us-east-1"
  access_key = "
}
provider "aws" {
  region     = "ap-south-1"
  access_key = "
  alias      = "pillows"
}
resource aws_instance "myec2" {
  ami           = "ami-96fda3c22c1c990a"
  instance_type = "t2.small"
  tags = {
    name = "devservers"
  }
}
resource aws_instance "myec3" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = "t2.medium"
  provider      = aws.pillows
  tags = {
    name = "prodservers"
  }
}
