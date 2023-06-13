output "vpc_flow_log_s3_arn" {
  description = "arn for s3 of VPC flow log"
  value       = module.s3_vpc_flow_log.s3_arn
}
