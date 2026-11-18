### Delete Network ###
resource "aws_vpc" "vpc_lab" {
    cidr_block = var.cidr_block
    tags = {
      Name=var.vpc_name
    }
}

resource "aws_subnet" "app" {
  for_each = var.subnets

  vpc_id                  = aws_vpc.vpc_lab.id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.availability_zone
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.subnet_name}-${each.key}"
  }
}