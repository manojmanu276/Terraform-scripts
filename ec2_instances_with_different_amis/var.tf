variable "instance_type" {
  default = "t2.micro"
  description = "this is instance that belongs to t2 family of instances and provides 1 virtual cpu, 1GiB memory hence the name t2.micro"
  type="string"
}
variable "key_name" {
  default = "your-key-name(pem-file-name)"
  description = "Privacy Enhanced Mail (PEM) files are a type of Public Key Infrastructure (PKI) file used for keys and certificates"
  type="string"
}
