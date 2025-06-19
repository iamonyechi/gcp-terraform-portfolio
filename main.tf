provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "portfolio_bucket" {
  name                        = var.bucket_name
  location                    = var.region
  force_destroy               = true
  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "index.html"
  }
}

resource "google_storage_bucket_iam_binding" "public_read" {
  bucket = google_storage_bucket.portfolio_bucket.name
  role   = "roles/storage.objectViewer"
  members = ["allUsers"]
}

resource "google_storage_bucket_object" "index" {
  name         = "index.html"
  bucket       = google_storage_bucket.portfolio_bucket.name
  source       = "${path.module}/website/index.html"
  content_type = "text/html"
}

resource "google_storage_bucket_object" "css" {
  name         = "style.css"
  bucket       = google_storage_bucket.portfolio_bucket.name
  source       = "${path.module}/website/style.css"
  content_type = "text/css"
}