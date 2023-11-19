locals {
  source_archive_object = var.cf_zip_file != "" ? var.cf_zip_file : lookup(data.google_cloudfunctions_function.default, "source_archive_object", "default.zip")
}

resource "google_cloudfunctions_function" "default" {
  name                  = var.cf_name
  description           = "Cloud Function"
  runtime               = var.cf_runtime
  available_memory_mb   = var.cf_ram
  source_archive_bucket = var.cf_bucket_name
  source_archive_object = local.source_archive_object
  entry_point           = var.cf_entrypoint
  trigger_http          = true

  environment_variables = {
    # Env
  }
}

data "google_cloudfunctions_function" "default" {
  count   = var.cf_zip_file != "" ? 0 : 1
  name    = var.cf_name
  project = var.gcp_project
  region  = var.region
}

resource "google_cloudfunctions_function_iam_member" "public_invoker" {
  count = google_cloudfunctions_function.default[0].trigger_http ? 1 : 0

  project        = var.gcp_project
  region         = var.region
  cloud_function = google_cloudfunctions_function.default[0].name
  role           = "roles/cloudfunctions.invoker"
  member         = "allUsers"
}
