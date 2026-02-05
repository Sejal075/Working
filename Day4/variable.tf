variable "aws_region" {
  description = "AWS region"
}

variable "env" {
  description = "Environment name"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
}

variable "instance_type" {
  description = "EC2 instance type"
}

variable "key_name" {
  description = "EC2 key pair name"
}

variable "allowed_ssh_cidr" {
  description = "Your IP for SSH"
}

variable "strapi_port" {
  default = 1337
}
