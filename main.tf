module "vpc" {
  source = "./modules/vpc"
}

module "ec2" {
  source = "./modules/ec2"
  ec2_instances = {
    "instance_1" = {
      ami_id             = "ami-08c3f791b55fe9c86"
      instance_type      = "t2.micro"
      subnet_id          = module.vpc.public_subnet_id
      security_group_id  = module.vpc.security_group_id
      name		 = "Fjah1872-web"
      environment	 = "dev"
    },
    "instance_2" = {
      ami_id             = "ami-08b5cbcab56780bc9"
      instance_type      = "t2.medium"
      subnet_id          = module.vpc.public_subnet_id
      security_group_id  = module.vpc.security_group_id
      name		 = "Fjah1872-app"
      environment	 = "dev"
    }
  }
}
