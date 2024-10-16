resource "aws_instance" "web-server" {
  ami           = data.aws_ami.amazonLinux.id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.pub1.id
  tags = {
    Name = "${var.instance_name}-new"
  }

  user_data       = file("webserver.sh")
  key_name        = var.ssh_key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
}