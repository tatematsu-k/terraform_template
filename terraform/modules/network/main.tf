module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  name = "${var.service_name}_${var.env}"
  cidr = var.cidr_block

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  # 必要に応じて変更
  enable_nat_gateway = false
  enable_vpn_gateway = false

  # vpc flow log
  enable_flow_log           = true
  flow_log_destination_type = "s3"
  flow_log_destination_arn  = var.flow_log_s3_arn
  flow_log_file_format      = "parquet"
  flow_log_traffic_type     = "ALL"
}
