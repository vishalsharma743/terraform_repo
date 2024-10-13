output "server_public_ip_address" {
  value = aws_instance.web-server.public_ip
}

output "ami_id" {
  value = data.aws_ami.amazonLinux.id
}