# Terraform-scripts
This repository contains basic terraform scripts to provision infrastructure on AWS platform. For example, to create multiple ec2 instances with different names and each using different amazon machine image, all included in a single resource block

## Terraform command to intialize a terraform working directory with configuration files
```
terraform init
```
## Terraform command to validate all the configuration files
```
terraform validate
```
## Terraform command to rewrite all the configuration files into canonical text format
```
terraform fmt
```
## Terraform command to create an execution plan
```
terraform plan
```
## Terraform command to execute proposed actions in the terraform plan in non-interactive mode
```
terraform apply --auto-approve
```
