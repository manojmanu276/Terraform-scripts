![featured](https://github.com/manojmanu276/Terraform-scripts/assets/102495616/309b5165-cabc-4807-9bab-ca16172eb94b)

# Terraform-scripts
This repository contains basic terraform scripts to provision infrastructure on AWS platform. For example, to create multiple ec2 instances with different names and each using different amazon machine image, all included in a single resource block

## What is Terraform
Terraform is open source infrastructure as a code tool ideal for creating, managing and updating infrasturce resources on multiple cloud providers

## ANSIBLE VS TERRAFORM 

![terraform-vs-ansible-1](https://github.com/manojmanu276/Terraform-scripts/assets/102495616/85a92396-9646-45d2-8bbb-d551d1a25f32)

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
