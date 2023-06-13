module "s3_vpc_flow_log" {
  source       = "./delivery_log_s3_module"
  service_name = var.service_name
  env          = var.env
  target_name  = "VPCFlowLog"
}
