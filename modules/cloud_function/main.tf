resource "google_cloudfunctions_function" "default" {
  name                  = var.cf_name
  description           = "Cloud Function"
  runtime               = var.cf_runtime
  available_memory_mb   = var.cf_ram
  source_archive_bucket = var.cf_bucket_name
  source_archive_object = var.cf_zip_file != "" ? var.cf_zip_file : data.google_cloudfunctions_function.default.source_archive_object
  entry_point           = var.cf_entrypoint
  trigger_http          = true

  environment_variables = {
    # Env
  }
}

data "google_cloudfunctions_function" "default" {
  name    = var.cf_name
  project = var.gcp_project
  region  = var.region
}
