variable "R_S_cidr_block" {
  description = "R_S_This CIDR Block is for the VPC"
  type        = string
  default     = "10.240.240.0/24"
}

variable "R_S_vpc_name" {
  description = "This is the VPC"
  type        = string
  default     = "r_s_vpc-net"
}


