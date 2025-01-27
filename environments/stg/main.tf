module "gateway" {
  source = "../../modules/ec2"

  ami_id               = "ami-0abcdef1234567890"
  instance_type        = "t3.micro"
  key_name             = "your-ssh-key"
  subnet_id            = "subnet-12345678"
  security_group_ids   = ["sg-12345678"]
  conduktor_license    = var.conduktor_license
  kafka_bootstrap_servers = var.kafka_bootstrap_servers
  confluent_api_key    = var.confluent_api_key
  confluent_api_secret = var.confluent_api_secret
  instance_name        = "conduktor-gateway-dev"
}
