provider "aws" {
  region = var.region
}

module "network" {
  source          = "./modules/network"
  vpc_name        = var.vpc_name
  cidr_block      = var.cidr_block
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "ecr" {
  source   = "./modules/ecr"
  ecr_name = var.ecr_name
}

module "ecs" {
  source           = "./modules/ecs"
  ecs_cluster_name = var.ecs_cluster_name
  ecs_service_name = var.ecs_service_name
  task_definition  = module.ecr.ecr_repository_url
}

module "db" {
  source   = "./modules/db"
  db_name  = var.db_name
  username = var.username
  password = var.password
}

module "logging" {
  source         = "./modules/logging"
  log_group_name = var.log_group_name
}
