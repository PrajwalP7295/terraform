output "vpc_id" {
  value = aws_vpc.vpc1.id
}

output "igw_id" {
  value = aws_internet_gateway.igw1.id
}

output "public_subnets" {
  value = [
    aws_subnet.public_subnet_1.id,
    aws_subnet.public_subnet_2.id
  ]
}

output "private_subnets" {
  value = [
    aws_subnet.private_subnet_1.id,
    aws_subnet.private_subnet_2.id
  ]
}

output "route_table_id" {
  value = aws_route_table.rt1.id
}
