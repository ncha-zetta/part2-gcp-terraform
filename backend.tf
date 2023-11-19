terraform {
  backend "gcs" {
    bucket  = "part2-tfstate"
    prefix  = "terraform/state"
  }
}
