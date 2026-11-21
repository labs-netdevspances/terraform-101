resource "aws_vpc" "R_S_vpc_lab" {
  cidr_block = var.R_S_cidr_block
  tags = {
    Name = var.R_S_vpc_name
  }
}

resource "aws_subnet" "R_S_Subn01" {
  vpc_id     = aws_vpc.R_S_vpc_lab.id
  cidr_block = var.R_S_cidr_block
  tags = {
    Name = "R_S_Subn01"
  }
}

resource "aws_subnet" "R_S_Subn02" {
  vpc_id     = aws_vpc.R_S_vpc_lab.id
  cidr_block = var.R_S_cidr_block
  tags = {
    Name = "R_S_Subn02"
  }
}