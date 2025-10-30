terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.9.0"
    }
  }
}

provider "google" {
  credentials = file("./credentials.json")
  project = "de-test-476612"
  region = "us-central1"
}


resource "google_storage_bucket" "test_bucket" {
  name          = "de-test-476612-terra-bucket"
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 3
    }
    action {
      type = "Delete"
    }
  }
}