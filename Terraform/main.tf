terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.9.0"
    }
  }
}

provider "google" {
  credentials = file(var.Credentials)
  project = var.Project
  region = var.Region
}


resource "google_storage_bucket" "test_bucket" {
  name          = var.gcs_storage_test
  location      = var.Location
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

resource "google_bigquery_dataset" "test_dataset" {
  dataset_id = var.bq_test_dataset
  location = var.Location
}