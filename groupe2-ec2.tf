resource "aws_instance" "ec2" {
  ami           = "ami-0b36832b92b749171"
  instance_type = "t3.micro"
  subnet_id     = "subnet_groupe2_web"
  tags = {
    Name = "TEST-EC2"
  }
}
