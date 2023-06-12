variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "env" {
  description = "ENV for service"
}

variable "service_name" {
  description = "Name for service"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "vpc_public_subnets" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
}

variable "vpc_private_subnets" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
}
