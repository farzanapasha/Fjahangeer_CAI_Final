output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_public_ips" {
  description = "Public IPs of the EC2 instances"
  value = module.ec2.ec2_public_ips
}

output "ec2_instance_ids" {
  description = "Instance IDs of the EC2 instances"
  value = module.ec2.ec2_instance_ids
}
