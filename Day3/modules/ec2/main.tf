resource "aws_instance" "this" {
  ami           = "ami-0d5eff06f840b45e9"   # Amazon Linux 2 (us-east-2)
  instance_type = "t2.micro"
  key_name      = var.key_name

  vpc_security_group_ids = [
    var.security_group_id
  ]

    tags = {
    Name = "Strapi-EC2"
  }
}
