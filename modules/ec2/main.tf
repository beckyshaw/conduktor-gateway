resource "aws_instance" "gateway" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  subnet_id              = var.subnet_id
  security_groups        = var.security_group_ids

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install docker -y
              sudo service docker start
              sudo usermod -aG docker ec2-user
              docker run -d -p 8080:8080 \
                -e CONDUKTOR_LICENSE=${var.conduktor_license} \
                -e KAFKA_BOOTSTRAP_SERVERS=${var.kafka_bootstrap_servers} \
                -e KAFKA_API_KEY=${var.confluent_api_key} \
                -e KAFKA_API_SECRET=${var.confluent_api_secret} \
                conduktor/gateway:latest
              EOF

  tags = {
    Name = var.instance_name
  }
}
