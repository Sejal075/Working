output "vpc_id" {
  value = aws_vpc.public_vpc.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "ec2_public_ip" {
  value = aws_instance.public_ec2.public_ip
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}
