terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "7.9.0"
    }
  }
}

provider "google" {
project     = "my-project-id"
region      = "us-central1"
}