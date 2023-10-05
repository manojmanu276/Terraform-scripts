variable "region" {
  default = "ap-south-1"
  description = "the region(geographical location) where I want to create the s3-resource"
  type = "string"
}
variable "acl_value" {
  default = "private"
  description = "the options can be "private", "public-read","public-read-write","authenticated-read" etc."
  type = "string"
}
variable "bucket_name" {
  default = "my-test-bucket-tf-1"
  description = "name of the s3 bucket i want to provision"
  type = "string"
}
variable "target" {
  default = "logs-bucket-tf"
  description = "name of the bucket where access logs will be stored"
  type = "string"
}
variable "sse" {
  default = "AES256"
  description = "advanced encryption standard encrypts data at rest in s3"    # server side encryption algorithm, can also be "aws:kms" for AWS Key Management service                                            
  type = "string"                                                       # Advanced Encryption Standard(AES) is a symmetric block cipher used to protect classified data      
}  
variable "environment" {
  default = "DEV"
  description = "environment in which you want s3 to be created"
  type = "string"
}
variable "class" {
  default= "GLACIER"
  description = "storage class to which you have to move s3 objects after certain number of days"
}
