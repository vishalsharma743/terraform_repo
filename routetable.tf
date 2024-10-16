resource "aws_route_table" "main" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_gateway.id
  }

  route {
    cidr_block = "10.0.0.0/16"
    gateway_id = "local"
  }


  tags = {
    Name = "main"
  }
}