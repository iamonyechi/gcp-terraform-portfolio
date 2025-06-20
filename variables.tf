variable "project_id" {
  description = "Your Google Cloud project ID"
  type        = string
}

variable "bucket_name" {
  description = "Unique name for the GCS bucket (lowercase letters, numbers, and dashes only)"
  type        = string
}

variable "region" {
  description = "GCP region for resources"
  type        = string
  default     = "us-east1" # Cheapest US region
}
