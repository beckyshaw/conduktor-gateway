output "instance_id" {
  value = aws_instance.gateway.id
}

output "public_ip" {
  value = aws_instance.gateway.public_ip
}
