resource "google_storage_bucket" "PubsubBucket" {
  name                        = "epam-demo-bucket-01"
  location                    = var.gcp_region
  project                     = var.project_id
  uniform_bucket_level_access = var.uniform_bucket_level_access
  force_destroy               = var.force_destroy
}
