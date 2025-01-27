variable "ami_id" {}
variable "instance_type" {}
variable "key_name" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
}
variable "conduktor_license" {}
variable "kafka_bootstrap_servers" {}
variable "confluent_api_key" {}
variable "confluent_api_secret" {}
variable "instance_name" {}
