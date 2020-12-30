resource "aws_s3_bucket" "b" {
  bucket = "goodmoody777"
  acl    = "private"

  tags = {
    Name = "My bucket"
  }
}

resource "aws_dynamodb_table" "example" {
  name           = "example"
  hash_key       = "LockID"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  attribute {
    type = "S"
    name = "LockID"
  }
}

terraform {
  backend "s3" {
    bucket             = "kulfa777"
    key                = "remotestatefilebucket"
    region             = "us-east-2"
    access_key         = ""
    secret_key         = "
    dynamodb_tablename = "todaytable"
  }
}
