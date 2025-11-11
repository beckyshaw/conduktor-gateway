# Global AWS Configuration
region         = "eu-west-1"

# EC2 Configuration (common across environments)
instance_type  = "t3.medium"
ami_id         = "ami-1234567890abcdef0"
key_pair       = "shared-ssh-key"

# Networking (may be shared across environments)
vpc_id         = "vpc-0abcd1234efgh5678"
gateway_port   = 8080

# Environment-specific Configuration
security_group_ids   = "${ENV_SECURITY_GROUP_IDS}"
conduktor_license    = "${ENV_CONDUKTOR_LICENSE}"
kafka_bootstrap_servers = "${ENV_KAFKA_BOOTSTRAP_SERVERS}"
confluent_api_key    = "${ENV_CONFLUENT_API_KEY}"
confluent_api_secret = "${ENV_CONFLUENT_API_SECRET}"

# Instance-specific Configuration
instance_name = "conduktor-gateway-${ENVIRONMENT}"
subnet_id     = "${ENV_SUBNET_ID}"
aws_security_group_ids = "${ENV_SECURITY_GROUP_IDS}"
