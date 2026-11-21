resource "aws_vpc" "vpc_groupe2" {
  cidr_block           = var.cird_block_groupe2
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_groupe2_name
  }
}

resource "aws_subnet" "subnet_groupe2_web" {
  vpc_id            = aws_vpc.vpc_groupe2.id
  cidr_block        = var.subnets_groupe2["group2_web"].cidr_block
  availability_zone = var.subnets_groupe2["group2_web"].availability_zone

  tags = {
    Name = var.subnet_groupe2_web
  }
}

resource "aws_subnet" "subnet_groupe2_db" {
  vpc_id            = aws_vpc.vpc_groupe2.id
  cidr_block        = var.subnets_groupe2["group2_db"].cidr_block
  availability_zone = var.subnets_groupe2["group2_db"].availability_zone

  tags = {
    Name = var.subnet_groupe2_db
  }
}