resource "aws_s3_bucket" "mybucket" {
  bucket = "adi-bucket-0001-2026"

  tags = {
    Name        = "My Example Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket" "example" {
  bucket_prefix = "hertz-dev-bucket-" //the best thing to do is to use <bucket_prefix=""> command so terraform will generate a name automatically
  tags = {
    Name        = "Hertz Bucket"
    Environment = "Dev"
  }
}
