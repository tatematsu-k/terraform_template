variable "service_name" {
  description = "Name for service"
}

variable "env" {
  description = "ENV for service"
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
}

variable "public_subnets" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnets" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
}

variable "azs" {
  description = "Comma-separated list of availability zones"
  default     = "ap-northeast-1a,ap-northeast-1c"
}
