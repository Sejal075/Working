variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

variable "availability_zone" {
  type    = string
  default = "ap-south-1a"
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-0f5ee92e2d63afc18" # Amazon Linux 2 (ap-south-1)
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  description = "EC2 key pair name"
  type        = string
  default = "keypair.pem"
}
