resource "aws_route_table_association" "pub1_internet" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "pub2_internet" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.main.id
}