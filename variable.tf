variable "region_name" {
  description = "region where infra has to be created"
  type        = string
}

variable "account_access_key" {
  description = "accesskey for the account"
  type        = string
}

variable "account_secret_key" {
  description = "accesskey for the account"
  type        = string
}

variable "securityGroup" {
  description = "Security group name"
  type        = string
}

variable "inboundPorts" {
  description = "ports for thr inbound rules"
  type        = list(any)
}

variable "instance_name" {
  description = "which image instance is using as base image"
  type        = string
}


variable "ssh_key_name" {
  description = "ker pair for instance"
  type        = string
}


variable "amiName" {
  description = "ami name for the server"
  type        = string
}

variable "ami_root_device_type" {
  description = "root device for machine"
  type        = string
}

variable "ami_virtualization" {
  description = "what virtualozation should be used"
  type        = string
}