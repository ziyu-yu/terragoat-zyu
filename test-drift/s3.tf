provider "aws" {
  region = "us-west-2" 
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "test-drift-bucket-"

  tags = {
    Name                 = "Drift Test"
    Environment          = "Dev"
  }
}
