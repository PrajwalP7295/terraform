terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}

provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_vpc" "vpc1" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  tags = {
    Name = "VPC-1"
  }
}

resource "aws_internet_gateway" "igw1" {
  vpc_id = aws_vpc.vpc1.id
  tags = {
    Name = "IGW-1"
  }
}

resource "aws_subnet" "public_subnet_1" {
  availability_zone       = var.public_subnet_1_availability_zone
  cidr_block              = var.public_subnet_1_cidr_block
  map_public_ip_on_launch = true
  vpc_id                  = aws_vpc.vpc1.id

  tags = {
    Name = "Pub-Sub-1"
  }
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.vpc1.id
  cidr_block              = var.public_subnet_2_cidr_block
  availability_zone       = var.public_subnet_2_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = "Pub-Sub-2"
  }
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "Pvt-Sub-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-east-1b"

  tags = {
    Name = "Pvt-Sub-2"
  }
}

resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw1.id
  }

  tags = {
    Name = "Route-Table-1"
  }
}

resource "aws_route_table_association" "public_subnet_1_asso" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table_association" "public_subnet_2_asso" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table_association" "private_subnet_1_asso" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.rt1.id
}

resource "aws_route_table_association" "private_subnet_2_asso" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.rt1.id
}
