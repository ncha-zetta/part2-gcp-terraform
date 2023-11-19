resource "google_storage_bucket" "cf_bucket" {
  name          = var.cf_bucket_name
  location      = var.region
}