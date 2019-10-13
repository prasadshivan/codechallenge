provider "aws" {
  region = "us-east-1"
}

module "my_vpc" {
  source = "../modules/vpc"
}

module "my_ec2" {
  source        = "../modules/ec2"
  ami_id        = "ami-04b9e92b5572fa0d1"
  sg_id         = [module.my_vpc.sg_id]
  instance_type = "t2.micro"
}

