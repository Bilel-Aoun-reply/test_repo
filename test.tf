provider "aws" {
 region = "eu-west-1"

  
}


# resource "aws_vpc" "test_vpc" {
#   cidr_block       = "10.0.0.0/16"
#   instance_tenancy = "default"

#   tags = {
#     Name = "test_vpc"
#   }
# }

resource "aws_instance" "test_Ec2" {
    ami = "ami-04b1c88a6bbd48f8e"
    instance_type = "t2.micro"
    tags = {
        Name= "vpc_test"
    }


  
}

# resource "aws_subnet" "test_subnet" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name = "subnet_test"
#   }
# }
