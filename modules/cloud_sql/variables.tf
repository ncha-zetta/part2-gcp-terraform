variable "gcp_project" {
    description = "GCP project name"
}

variable "region" {
  description = "GCP region"
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