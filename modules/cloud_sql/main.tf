resource "google_sql_database_instance" "default" {
  name             = var.db_name
  database_version = "MYSQL_5_7"
  root_password    = var.db_password
  region           = var.region

  settings {
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "default" {
  name     = var.db_name
  instance = google_sql_database_instance.default.name
}

resource "google_sql_user" "default" {
  name     = var.db_user
  instance = google_sql_database_instance.default.name
  password = var.db_password
  host     = "%"
}
