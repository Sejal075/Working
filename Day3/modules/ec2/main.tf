resource "aws_instance" "this" {
  ami           = "ami-0d5eff06f840b45e9"   # Amazon Linux 2 (us-east-2)
  instance_type = "t2.micro"
  key_name      = var.key_name

  vpc_security_group_ids = [
    var.security_group_id
  ]
  user_data = <<-EOF
    #!/bin/bash

    # Update system
    yum update -y

    # Install required packages
    yum install -y git curl

    # Install NVM
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
    export NVM_DIR="/home/ec2-user/.nvm"
    source /home/ec2-user/.nvm/nvm.sh

    # Install Node.js 20
    nvm install 20
    nvm use 20
    nvm alias default 20

    # Install Yarn
    npm install -g yarn

    # Create Strapi application
    cd /home/ec2-user
    npx create-strapi-app@latest my-strapi --quickstart

    # Fix ownership
    chown -R ec2-user:ec2-user /home/ec2-user/my-strapi
  EOF

    tags = {
    Name = "Strapi-EC2"
  }
}

