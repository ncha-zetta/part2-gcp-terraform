variable "gcp_project" {
    description = "GCP project name"
}

variable "region" {
  description = "GCP region"
}

variable "cf_bucket_name" {
  description = "GCP bucket name"
}

variable "cf_runtime" {
  description = "The runtime of the Cloud Function"
  default     = "python39"
}

variable "cf_name" {
  description = "Name of Cloud Function"
}

variable "cf_entrypoint" {
  description = "The entry point of the Cloud Function"
}

variable "cf_ram" {
  description = "Cloud Function RAM in MB"
}

variable "cf_zip_file" {
  description = "Name of zip file"
}

variable "db_name" {
  description = "name of db name"
  default     = "part2-db"
}

variable "db_user" {
  description = "Database password"
  default     = "user"
}

variable "db_password" {
  description = "Database password"
}