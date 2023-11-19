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

variable "entry_point" {
  description = "The entry point of the Cloud Function"
  default     = "list_vpcs_and_subnets"
}

variable "runtime" {
  description = "The runtime of the Cloud Function"
  default     = "python39"
}

variable "available_memory_mb" {
  description = "Cloud Function RAM in MB"
  default     = 128
}
