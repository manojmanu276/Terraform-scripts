terraform {
  required_version=">=1.2.0"           #required minimum version of terraform
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>4.9"                #required minimum version of aws
    }
  }
}
