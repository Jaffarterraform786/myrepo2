resource "aws_instance" "myec23" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = "t2.large"
  tags = {
    name = "myec3"
  }
}
