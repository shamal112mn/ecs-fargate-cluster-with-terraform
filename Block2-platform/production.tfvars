# remote state
remote_state_key = "PROD/infrastructure.tfstate"
remote_state_bucket = "myesc-fargate-terraform-remote-state"

ecs_domain_name = "quickcloudsolution.link"  #"YOUR_ROUTE53_DOMAIN"
ecs_cluster_name = "Production-ECS-Cluster"
internet_cidr_block = "0.0.0.0/0"

# user_profile = ""