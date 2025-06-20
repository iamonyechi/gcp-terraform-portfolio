provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "portfolio_bucket" {
  name     = var.bucket_name
  location = var.region
  force_destroy = true

  website {
    main_page_suffix = "index.html"
  }

  uniform_bucket_level_access = true
}

resource "google_storage_bucket_object" "index" {
  name         = "index.html"
  bucket       = google_storage_bucket.portfolio_bucket.name
  source       = "website/index.html"
  content_type = "text/html"
}

resource "google_storage_bucket_object" "style" {
  name         = "style.css"
  bucket       = google_storage_bucket.portfolio_bucket.name
  source       = "website/style.css"
  content_type = "text/css"
}
