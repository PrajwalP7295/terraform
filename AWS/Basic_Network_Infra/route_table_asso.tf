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
