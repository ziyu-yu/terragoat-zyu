provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {

  tags = {
    drift                = "detected"
    Name                 = "Drift Test"
    Environment          = "Dev"
    git_commit           = "b3936d8e919a812530beffcdb7b8f5d7686fc247"
    git_file             = "test-drift/s3.tf"
    git_last_modified_at = "2022-11-22 05:00:36"
    git_last_modified_by = "37553582+ziyu-yu@users.noreply.github.com"
    git_modifiers        = "37553582+ziyu-yu"
    git_org              = "ziyu-yu"
    git_repo             = "terragoat-zyu"
    yor_trace            = "a87ad5ea-83da-457f-900f-61bb7b707cb2"
    yor_name             = "dockingbay"
  }
  bucket                               = "test-drift-bucket-20230105185957766800000001"
  server_side_encryption_configuration = { "rule" : { "apply_server_side_encryption_by_default" : { "sse_algorithm" : "AES256" } } }
}

