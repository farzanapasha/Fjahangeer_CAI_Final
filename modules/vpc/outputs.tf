output "vpc_id" {
  value = aws_vpc.custom_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "security_group_id" {
  value = aws_security_group.allow_ssh_http_https.id
}

