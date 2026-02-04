resource "aws_instance" "this" {
  ami           = "ami-0d5eff06f840b45e9"   # Amazon Linux 2 (us-east-2)
  instance_type = "t2.micro"
  key_name      = var.key_name

  vpc_security_group_ids = [
    var.security_group_id
  ]

  user_data = <<-EOF
    #!/bin/bash
    yum update -y

    curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
    yum install -y nodejs git

    npm install -g pm2

    cd /opt
    npx create-strapi-app@latest my-strapi --quickstart --no-run

    cd my-strapi

    cat <<EOT > config/server.js
    module.exports = ({ env }) => ({
      host: '0.0.0.0',
      port: 1337,
      app: {
        keys: env.array('APP_KEYS'),
      },
    });
    EOT

    pm2 start npm --name strapi -- run develop
    pm2 save
  EOF

  tags = {
    Name = "Strapi-EC2"
  }
}
