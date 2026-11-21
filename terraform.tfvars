vpc_name = "LAB-NETWORK"

######## DEBUT DE VAEUR DE VARIABLE Groupe 3 ############


vpc_name_team3 = "devops-vpc"

vpc_cidr_team3 = "10.70.0.0/16"

subnets_team3 = {
  subnet-1 = {
    cidr_block        = "10.70.1.0/24"
    availability_zone = "ca-central-1a"
  }

  subnet-2 = {
    cidr_block        = "10.70.2.0/24"
    availability_zone = "ca-central-1b"
  }
}
