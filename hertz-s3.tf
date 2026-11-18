resource "aws_s3_bucket" "example" {
  bucket = "hertz-bucket-1"
  acl    = "private"

  tags = {
    Name        = "Hertz Bucket"
    Environment = "Dev"
  }
}