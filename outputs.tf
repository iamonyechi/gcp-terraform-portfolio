output "website_url" {
  description = "Public URL of your static site"
  value       = "http://${google_storage_bucket.portfolio_bucket.name}.storage.googleapis.com/index.html"
}