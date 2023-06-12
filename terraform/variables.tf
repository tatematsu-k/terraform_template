variable "region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_name" {
  description = "Name for the VPC"
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

variable "ecr_name" {
  description = "Name for the ECR repository"
}

variable "ecs_cluster_name" {
  description = "Name for the ECS cluster"
}

variable "ecs_service_name" {
  description = "Name for the ECS service"
}

variable "db_name" {
  description = "Name for the RDS instance"
}

variable "username" {
  description = "Username for the RDS instance"
}

variable "password" {
  description = "Password for the RDS instance"
  sensitive   = true
}

variable "log_group_name" {
  description = "Name for the CloudWatch Logs group"
}
