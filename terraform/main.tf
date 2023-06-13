module "network" {
  source          = "./modules/network"
  service_name    = var.service_name
  env             = var.env
  cidr_block      = var.vpc_cidr_block
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets
  flow_log_s3_arn = module.s3.vpc_flow_log_s3_arn
}

module "s3" {
  source       = "./modules/s3"
  service_name = var.service_name
  env          = var.env
}