variable "project_id" {
  description = "Your GCP Project ID"
  type        = string
  default     = "terraform-portfolio-project"
}

variable "region" {
  description = "GCP region for resources"
  default     = "us-east1" # Cheapest region
}

variable "bucket_name" {
  description = "Globally unique bucket name"
  type        = string
  default     = "terraformportfolioprojectstorage"
}