resource "aws_s3_bucket" "test-bucket-tf" {
   bucket = "my-test-bucket-tf-1"           #replace with your desired bucket-name
   tags = {
    Name = "my-test-bucket-tf-1"
    Environment = "Dev"
   }
   acl = var.acl_value        #Access Control List options available are "public","private","public-read","public-read-write","authenticated-read", etc.
   versioning {
     enabled =  true     # keeping multiple variants of the same object is called versioning
   }
   logging {
     target_bucket = "log-bucket-tf"  # Bucket where access logs will be stored
     target_prefix = "logs/"
   }
   server_side_encryption_configuration {            # This option encrypts bucket data or objects at rest
      rule {
        apply_server_side_encryption_by_default {
             sse_algorithm = "AES256"                 # server side encryption algorithm, can also be "aws:kms" for AWS Key Management service
                                                     # Advanced Encryption Standard(AES) is a symmetric block cipher used to protect classified data
        }
     }
   }
   lifecycle_rule {
      enabled = true
      transition {
         days = 30                                # by default all the bucket objects will be stored in standard storage class. 
         storage_class = "GLACIER"                # moving the bucket objects to glacier storage after 30 days of storage in standard storage class
      }
      expiration {
         days = 90                                # permanently delete objects after a duration of 90 days
      }
}
}
