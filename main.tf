provider "aws" {
  region  = var.region
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = var.name

  ami                    = "ami-02e136e904f3da870"
  instance_type          = "t2.micro"
  key_name               = "myWindows"
  monitoring             = false
  vpc_security_group_ids = ["sg-fe1ca8db", "sg-0e9b771d788ff0d80", "sg-0d0400719b48d7725"]
  subnet_id              = "subnet-0b5dbb6b1fdcf015c"
}