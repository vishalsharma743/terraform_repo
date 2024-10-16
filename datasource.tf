data "aws_ami" "amazonLinux" {
  most_recent = true
  owners      = ["137112412989"]
  
  filter {
    name   = "name"
    values = [var.amiName]
  }

  filter {
    name   = "root-device-type"
    values = [var.ami_root_device_type]
  }

  filter {
    name   = "virtualization-type"
    values = [var.ami_virtualization]
  }
}

