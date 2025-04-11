variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zone" {
  description = "Availability zone for the VPC"
  type        = string
  default     = "us-west-2a"
}

variable "map_public_ip" {
  description = "Map public IP"
  type        = bool
  default     = true
}

