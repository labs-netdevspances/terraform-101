locals {
    env = "dev"
    region = "ca-central-1"
    az1 = "ca-central-1a"
    az2 = "ca-central-1b"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.50.0.0/16"
}