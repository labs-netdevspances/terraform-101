### Delete Network ###
resource "aws_vpc" "vpc_lab" {
    cidr_block = var.cidr_block
    tags = {
      Name=var.vpc_name
    }
}