resource "aws_instance" "ec2_instance" {
  for_each = var.ec2_instances

  ami                       = each.value.ami_id
  instance_type             = each.value.instance_type
  subnet_id                 = each.value.subnet_id
  vpc_security_group_ids    = [each.value.security_group_id]
  associate_public_ip_address = true
  tags = {
    Name        = each.value.name
    Environment = each.value.environment
    CreatedBy   = "Terraform"
  }
}
