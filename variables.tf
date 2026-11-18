### Deleting the VPC and Subnet resources
variable "cidr_block" {
     description = "This CIDR Block is for the VPC"
     type = string
     default = "10.220.100.0/24"
}

variable "vpc_name" {
    description = "This is the VPC"
     type = string
     default = "vpc-net"
}