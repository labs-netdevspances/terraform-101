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
variable "subnet_name" {
  description = "Préfixe du nom des subnets"
  type        = string
  default     = "subnet-net"
}

variable "subnets" {
  description = "CIDR et zone de disponibilité de chaque subnet"
  type = map(object({
    cidr_block        = string
    availability_zone = string
  }))

  default = {
    web = {
      cidr_block        = "10.220.100.0/26"
      availability_zone = "ca-central-1a"
    }
    db = {
      cidr_block        = "10.220.100.64/26"
      availability_zone = "ca-central-1b"
    }
  }
}

variable "web01_cidr" {
  description = "This CIDR Block is for the web01 subnet"
  type        = string
  default     = "10.220.100.0/25"
}

variable "database01_cidr" {
  description = "This CIDR Block is for the database01 subnet"
  type        = string
  default     = "10.220.100.128/25"
}