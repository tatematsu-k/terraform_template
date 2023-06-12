module "network" {
  source          = "./modules/network"
  service_name    = var.service_name
  env             = var.env
  cidr_block      = var.vpc_cidr_block
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets
}
