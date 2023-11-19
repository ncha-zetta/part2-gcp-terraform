resource "google_cloudfunctions_function" "default" {
  count = var.cf_zip_file != "" ? 1 : 0
  
  name                  = var.cf_name
  description           = "Cloud Function"
  runtime               = var.cf_runtime
  available_memory_mb   = var.cf_ram
  source_archive_bucket = var.cf_bucket_name
  source_archive_object = var.cf_zip_file
  entry_point           = var.cf_entrypoint
  trigger_http          = true

  environment_variables = {
    # Env
  }
}

resource "google_cloudfunctions_function_iam_member" "public_invoker" {
  project        = var.gcp_project
  region         = var.region
  cloud_function = google_cloudfunctions_function.default.name
  role           = "roles/cloudfunctions.invoker"
  member         = "allUsers"
}