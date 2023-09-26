locals {
  instance_names=toset(["instance1","instance2","instance3"]) #instance names declared through a local variable.
}
resource "aws_instance" "ec2_instances"{
     for_each=local.instance_names  #Passing the for_each argument to a cloud resource tells Terraform to create a different resource for each item in a map or list and a list cannot be directly fed to for_each meta-argument. Hence we have to convert it to set.
     instance_type="t2.micro"   #here i am creating 3 instances with different names and they belong to t2.micro instance family
     tags = {
       Name=each.key    #takes the instance names from local variable declared earlier
     }
     ami = "ami-0f5ee92e2d63afc18" #amazon machine image is a pre-configured package required to launch ec2_instance. Here i am using same ami-id for all the instances
}
#the above terraform script will create 3 instances of type "t2.micro" and three different names "instance1","instance2" and "instance3"
