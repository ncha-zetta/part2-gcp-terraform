variable "gcp_project" {
  description = "GCP project name"
  default     = "copper-index-405519"
}

variable "region" {
  description = "GCP region"
  default     = "us-east1"
}

variable "bucket_name" {
  description = "GCP bucket name"
  default     = "part2-ncha-zetta"
}

variable "db_user" {
  description = "Database user"
  default     = "user"
}

variable "db_password" {
  description = "Database password"
}

variable "cf_name" {
  description = "Name of Cloud Function"
  default     = "part2-cf"
}

variable "cf_bucket_name" {
  description = "name of db name"
  default     = "part2-db"
}

variable "cf_entrypoint" {
  description = "The entry point of the Cloud Function"
  default     = "list_vpcs_and_subnets"
}

variable "cr_ram" {
  description = "Cloud Function RAM in MB"
  default     = 128
}
