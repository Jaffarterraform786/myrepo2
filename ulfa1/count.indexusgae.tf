provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6HVQRT7QSBAFVFP7"
  secret_key = "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"
}
/*resource aws_instance "myec2" {
  ami           = "04d29b6f966df1537"
  instance_type = "t2.small"
  count         = 3
  tags = {
    name = "server1.${count.index}"
  }

}*/
resource aws_iam_user "users" {
  name  = "john.${count.index}"
  path  = "/system/"
  count = 3
}
