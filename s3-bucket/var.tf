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
