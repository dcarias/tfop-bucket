# Create a GCS Bucket
resource "google_storage_bucket" "my_bucket" {
  name     = var.bucket_name
  location = var.project_region
}

output "my_bucket_name" {
  value = google_storage_bucket.my_bucket.name
}
