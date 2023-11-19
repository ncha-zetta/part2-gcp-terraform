resource "google_cloudfunctions_function" "default" {
  name                  = var.cf_name
  description           = "Cloud Function"
  runtime               = var.cf_runtime
  available_memory_mb   = var.cr_ram
  source_archive_bucket = var.cf_bucket_name
  source_archive_object = var.cf_bucket_name
  entry_point           = var.cf_entrypoint
  trigger_http          = true

  environment_variables = {
    # Env
  }
}
