output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.network.vpc_id
}

output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = module.ecr.repository_url
}

output "ecs_cluster_arn" {
  description = "The ARN of the ECS cluster"
  value       = module.ecs.cluster_arn
}

output "db_instance_address" {
  description = "The address of the RDS instance"
  value       = module.db.instance_address
}

output "log_group_arn" {
  description = "The ARN of the CloudWatch Logs group"
  value       = module.logging.log_group_arn
}
