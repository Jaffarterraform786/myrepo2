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
