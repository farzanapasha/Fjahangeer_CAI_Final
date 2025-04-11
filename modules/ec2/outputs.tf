output "ec2_public_ips" {
  description = "Public IPs of EC2 instances"
  value = {
    for instance_key, instance in aws_instance.ec2_instance : 
    instance_key => instance.public_ip
  }
}

output "ec2_instance_ids" {
  description = "Instance IDs of EC2 instances"
  value = {
    for instance_key, instance in aws_instance.ec2_instance : 
    instance_key => instance.id
  }
}

