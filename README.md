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

 List terraform commands:

  source set-tfenv.sh
  terraform init -backend-config=infrastructure-prod.config   #to init terraform backend 
  terraform init -backend-config=platform-prod.config
  terraform init -backend-config=app-prod.config

  terraform plan    -var-file production.tfvars
  terraform apply   -var-file production.tfvars
  terraform destroy -var-file production.tfvars

3 Deploy Application block has script deploy.sh and use script with commands:

  - cd Block3-application/infrastructure

  - source deploy.sh build       # to build java app and 
                                 # generate target folder with application.jar file

  - source deploy.sh dockerize   # to build docker image and 
                                 # push to ECR ( update SERVICE_TAG="v1" for new image )

  - source deploy.sh plan        # to init backend and run terraform plan
  - source deploy.sh deploy      # to init backend and run terraform apply
  - source deploy.sh destroy     # to run terraform destroy





```