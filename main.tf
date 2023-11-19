module "cloudsql" {
  source = "./modules/cloud_sql"
  project_id = var.project_id
  region = var.region
}

module "cloudfunction" {
  source = "./modules/cloud_function"
  project_id = var.project_id
  region = var.region
  bucket_name = var.bucket_name
  entry_point = var.entry_point
  runtime = var.runtime
  source_archive_bucket = var.source_archive_bucket
  source_archive_object = var.source_archive_object
  available_memory_mb = var.available_memory_mb
  cloud_sql_connection_name = module.cloudsql.connection_name
}
