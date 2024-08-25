terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.69.1"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.69.1"
    }
    local = {
      source  = "hashicorp/local"
      version = ">= 2.0.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  credentials = file("${path.module}/gke-terraform-adri-c8da0cfbbcd8.json")

  region      = var.region
}
provider "google-beta" {
  credentials = file("${path.module}/gke-terraform-adri-c8da0cfbbcd8.json")

  project     = var.project_id
  region      = var.region
}         