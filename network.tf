resource "aws_vpc" "rds_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "rds_vpc"
  }
}


resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.rds_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "private_subnet"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.rds_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_route_table" "pub_route" {
  vpc_id = aws_vpc.rds_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.public_igw.id
  }

  tags = {
    Name = "pub_route"
  }
}

resource "aws_internet_gateway" "public_igw" {
  vpc_id = aws_vpc.rds_vpc.id

  tags = {
    Name = "public_igw"
  }
}