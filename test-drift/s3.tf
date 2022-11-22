provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dockingbay" {
  bucket_prefix = "test-drift-bucket-"

  tags = {
    Name                 = "Drift Test"
    Environment          = "Dev"
    git_commit           = "2ccbeea81614dd027977db2bcbb057f10c314a0b"
    git_file             = "test-drift/s3.tf"
    git_last_modified_at = "2022-11-22 18:28:43"
    git_last_modified_by = "37553582+ziyu-yu@users.noreply.github.com"
    git_modifiers        = "37553582+ziyu-yu"
    git_org              = "ziyu-yu"
    git_repo             = "terragoat-zyu"
    yor_trace            = "a87ad5ea-83da-457f-900f-61bb7b707cb2"
  }
}
