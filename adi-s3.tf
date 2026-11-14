resource "aws_s3_bucket" "mybucket" {
  bucket = "adi-bucket-0001"

  tags = {
    Name        = "My Example Bucket"
    Environment = "Dev"
  }
}
