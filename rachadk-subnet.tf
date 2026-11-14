resource "aws_vpc" "rachadk" {
  cidr_block         = "10.20.0.0/16"
  enable_dns_support = true

  tags = {
    Name = "rachadk-vpc"
  }
}

resource "aws_subnet" "rachadk_a" {
  vpc_id     = aws_vpc.rachadk.id
  cidr_block = "10.20.1.0/24"

  tags = {
    Name = "rachadk-subnet-a"
  }
}

resource "aws_subnet" "rachadk_b" {
  vpc_id     = aws_vpc.rachadk.id
  cidr_block = "10.20.2.0/24"

  tags = {
    Name = "rachadk-subnet-b"
  }
}