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
