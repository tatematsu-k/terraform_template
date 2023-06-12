region           = "ap-northeast-1"
vpc_name         = "my-vpc"
cidr_block       = "10.0.0.0/16"
public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets  = ["10.0.10.0/24", "10.0.11.0/24"]
ecr_name         = "my-ecr-repo"
ecs_cluster_name = "my-ecs-cluster"
ecs_service_name = "my-ecs-service"
db_name          = "my-db-instance"
username         = "admin"
password         = "password"  # 本番環境では安全なパスワードを設定してください
log_group_name   = "my-log-group"