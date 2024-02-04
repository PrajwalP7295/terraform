resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.private_subnet_1_cidr_block
  availability_zone = var.private_subnet_1_availability_zone

  tags = {
    Name = "Pvt-Sub-1"
  }
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.private_subnet_2_cidr_block
  availability_zone = var.private_subnet_2_availability_zone

  tags = {
    Name = "Pvt-Sub-2"
  }
}
