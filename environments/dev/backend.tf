terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket"
    key            = "conduktor-gateway/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "your-lock-table"
  }
}
