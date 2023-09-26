terraform {
   required_version=">=1.2.0"     #here mention the required version of terraform you want to use to provision the aws infrastructure
   required_providers {
     aws = {
       source="hashicorp/aws"
       version="~>4.16"           #here mention the required version of aws
     }
   }
}
