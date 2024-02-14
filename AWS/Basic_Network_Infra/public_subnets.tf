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
