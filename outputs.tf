output "website_url" {
  description = "The URL of the deployed static website"
  value       = "https://storage.googleapis.com/${google_storage_bucket.portfolio_bucket.name}/index.html"
}
