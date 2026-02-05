variable "aws_region" {
  description = "AWS region"
  default = "us-east-2"
}

variable "env" {
  description = "Environment name"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Public subnet CIDR"
}

variable "private_subnet_cidr" {
  description = "Private subnet CIDR"
}

variable "instance_type" {
  description = "EC2 instance type"
  default = "t3.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  default = "keypair"
}

variable "allowed_ssh_cidr" {
  description = "Your IP for SSH"
}

variable "strapi_port" {
  default = 1337
}
