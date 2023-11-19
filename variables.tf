##############################################
# Main
##############################################

variable "gcp_project" {
  description = "GCP project name"
  default     = "copper-index-405519"
}

variable "region" {
  description = "GCP region"
  default     = "us-east1"
}

##############################################
# DB - Cloud SQL
##############################################

variable "db_name" {
  description = "Cloud Sql Database name"
  default     = "part2-cloud-function"
}

variable "db_user" {
  description = "Database user"
  default     = "user"
}

variable "db_password" {
  description = "Database password"
}

##############################################
# Cloud Function
##############################################

variable "cf_name" {
  description = "Name of Cloud Function"
  default     = "part2-cf"
}

variable "cf_bucket_name" {
  description = "name of db name"
  default     = "part2-db"
}

variable "cf_runtime" {
  description = "The runtime of the Cloud Function"
  default     = "python39"
}

variable "cf_entrypoint" {
  description = "The entry point of the Cloud Function"
  default     = "list_vpcs_and_subnets"
}

variable "cf_ram" {
  description = "Cloud Function RAM in MB"
  default     = 128
}
