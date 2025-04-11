variable "ec2_instances" {
  description = "A map of EC2 instances"
  type = map(object({
    ami_id            = string
    instance_type     = string
    subnet_id         = string
    security_group_id = string
    name              = string
    environment       = string
  }))
}
