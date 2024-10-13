resource "aws_key_pair" "my-key" {
  key_name   = var.ssh_key_name
  public_key = file("webserver_key.pub")
}