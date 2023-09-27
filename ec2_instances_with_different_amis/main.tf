locals {
  instance_names={"instance1":"ami-067c21fb1979f0b27","instance2":"ami-06384cb50db0a13f5","instance3":"ami-08abb3eeacc61972d"}
}
resource "aws_instance" "ec2_test_instances" {
  key_name = var.key_name             #takes key_name from variable declared in variables.tf file
  instance_type = var.instance_type   #gets instance_type from variable declared in variables.tf file
  for_each = local.instance_names     #takes instance names for mapping locals variable declared above
  ami = each.value                    #takes ami-ids from values of mapping locals variable 
  tags = {
    Name= each.key                    #takes instance names form from keys of mapping locals variable
  }
}

# This terraform script creates 3 instances with different names instance1,instance2,instance3 with amis of amazon-linux(ami-067c21fb1979f0b27),MacOS(ami-06384cb50db0a13f5),Windows(ami-08abb3eeacc61972d) respectively
# amazon machine image(ami) is a preconfigured package that contains operating systems, softwares and other libraries which is required to launch ec2_instances
  
