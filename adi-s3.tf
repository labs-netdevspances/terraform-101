resource "aws_s3_bucket" "mybucket" {
  bucket = "adi-bucket-0001"

  tags = {
    Name        = "My Example Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "s3_bucket_test" {
  bucket = "nelson237-123456"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
