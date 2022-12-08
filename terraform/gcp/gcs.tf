resource "google_storage_bucket" "terragoat_website" {
  name          = "terragot-${var.environment}"
  location      = var.location
  force_destroy = true
  labels = {
    git_commit           = "2bece45530b1d5c8cbcf780b51bf3fdca492df11"
    git_file             = "terraform__gcp__gcs_tf"
    git_last_modified_at = "2022-12-08-22-08-01"
    git_last_modified_by = "37553582ziyu-yu"
    git_modifiers        = "37553582ziyu-yu__nimrodkor"
    git_org              = "ziyu-yu"
    git_repo             = "terragoat-zyu"
    yor_trace            = "bd00cd2e-f53f-4daf-8d4d-74c47846c1cc"
  }
}

resource "google_storage_bucket_iam_binding" "allow_public_read" {
  bucket  = google_storage_bucket.terragoat_website.id
  members = ["allUsers"]
  role    = "roles/storage.objectViewer"
}
