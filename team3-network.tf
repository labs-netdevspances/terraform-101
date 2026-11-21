
# Debut De La Creation du VPC


resource "aws_vpc" "vpc_team3" {
  cidr_block = var.vpc_cidr_team3

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.vpc_name
  }
}


############# Debut De La Creation des deux subnets


resource "aws_subnet" "subnets_team3" {
  for_each = var.subnets_team3

  vpc_id            = aws_vpc.vpc_team3.id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = each.key
  }
}
