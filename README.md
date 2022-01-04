## ECS-Fargate project

```

Project was splited into 3 blocks:

1 Provision VPC
2 Provision ECS Fargate cluster
3 Deploy application (simple java appl.)


How to run project

1 Set Environment varaibles for AWS and Terraform and run each time for new terminal window
 - for AWS use $AWS_PROFILE to set current user creds
 - for Terraform  use script set-tfenv.sh to pass aws current user creds

2 Creade S3 bucket for Terraform Backend and update config files with bucket name:
 - infrastructure-prod.config ( in Block1)
 - platform-prod.config       ( in Block2)  
 - app-prod.config            ( in Block3)

 List commands:
  source set-tfenv.sh
  terraform init -backend-config=infrastructure-prod.config   #to init terraform backend 
  terraform init -backend-config=platform-prod.config
  terraform init -backend-config=app-prod.config


```