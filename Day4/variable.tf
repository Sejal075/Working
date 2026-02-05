variable "aws_region" {}
variable "env" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}
variable "instance_type" {}
variable "key_name" {}
variable "allowed_ssh_cidr" {}
variable "strapi_port" {
default = 1337
}