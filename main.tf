module "cloudsql" {
  source = "./modules/cloud_sql"

  gcp_project = var.gcp_project
  region = var.region
  db_name = var.db_name
  db_user = var.db_user
  db_password = var.db_password
}

module "cloudfunction" {
  source = "./modules/cloud_function"

  gcp_project = var.gcp_project
  region = var.region
  cf_bucket_name = var.cf_bucket_name
  cf_runtime = var.cf_runtime
  cf_name = var.cf_name
  cf_entrypoint = var.cf_entrypoint
  cf_ram = var.cf_ram
}
