resource "aws_s3_bucket" "example" {
  bucket = "adi-bucket-0001"
  acl    = "private"

  tags = {
    Name        = "My Example Bucket"
    Environment = "Dev"
  }
}
