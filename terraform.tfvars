ami_id = "ami-0c55b159cbfafe1f0"  # Example AMI ID
instance_type = "t2.micro"
ec2_instances = {
  "instance_1" = {
    ami_id             = "ami-0c55b159cbfafe1f0"
    instance_type      = "t2.micro"
    subnet_id          = module.vpc.subnet_id
    security_group_id  = module.vpc.security_group_id
  },
  "instance_2" = {
    ami_id             = "ami-0c55b159cbfafe1f1"
    instance_type      = "t2.medium"
    subnet_id          = module.vpc.subnet_id
    security_group_id  = module.vpc.security_group_id
  }
}
