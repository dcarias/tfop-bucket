terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  # optional, may also be configured via `gcloud config set project <project ID>`
  project = var.project_id

  # see https://cloud.google.com/compute/docs/regions-zones for more information
  region = var.project_region
}

provider "google-beta" {
  project = var.project_id
  region  = var.project_region
}
