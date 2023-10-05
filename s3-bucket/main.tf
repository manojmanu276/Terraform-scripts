resource "aws_s3_bucket" "test-bucket-tf" {
   bucket = var.bucket_name           #takes values from variables declared in variable.tf
   tags = {
    Name = var.bucket_name
    Environment = var.environment
   }
   acl = var.acl_value       
   versioning {
     enabled =  true     # keeping multiple variants of the same object is called versioning
   }
   logging {
     target_bucket = var.target  # Bucket where access logs will be stored
     target_prefix = "logs/"
   }
   server_side_encryption_configuration {            # This option encrypts bucket data or objects at rest
      rule {
        apply_server_side_encryption_by_default {
             sse_algorithm = var.sse                 # server side encryption algorithm, can also be "aws:kms" for AWS Key Management service
                                                     # Advanced Encryption Standard(AES) is a symmetric block cipher used to protect classified data
        }
     }
   }
   lifecycle_rule {
      enabled = true
      transition {
         days = 30                                # by default all the bucket objects will be stored in standard storage class. 
         storage_class = var.class                # moving the bucket objects to other storage class declared in var.tf after 30 days of storage in standard storage class
      }
      expiration {
         days = 90                                # permanently delete objects after a duration of 90 days
      }
}
}
