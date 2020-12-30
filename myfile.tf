resource "aws_instance" "myec23" {
  ami           = "ami-08f63db601b82ff5f"
  instance_type = "t2.large"
  tags = {
    name = "myec3"
  }
}
output "hello" {
  value = aws_instance.myec23.id
  }
  
module "helloworld"
{
source = "./parentmoduleloaction”
}
output "vn" {
Value = module.helloworld.Hello.id
}
