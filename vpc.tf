resource "aws_vpc" "myvpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
tags = {
    Name = "My VPC for the website"
  }
}


resource "aws_internet_gateway" "myigw" {
  vpc_id = "${aws_vpc.myvpc.id}"
}


# Creating 1st subnet 
resource "aws_subnet" "subnet1" {
  vpc_id                  = "${aws_vpc.myvpc.id}"
  cidr_block             = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-2a"
tags = {
    Name = "Demo subnet"
  }
}
# Creating 2nd subnet 
resource "aws_subnet" "subnet2" {
  vpc_id                  = "${aws_vpc.myvpc.id}"
  cidr_block             = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "eu-west-2b"
tags = {
    Name = "public-subnet-2"
  }
}