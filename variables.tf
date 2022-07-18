variable "enforce_domain_name" {
  default     = "guak.dev"
  type        = string
  description = "Domain name of your Chainguard Enforce environment"
  sensitive   = false
  nullable    = false
}

variable "enforce_group_id" {
  type        = string
  description = "Enforce IAM group ID to bind your AWS account to"
  sensitive   = false
  nullable    = false

  validation {
    condition     = regexall("[a-f0-9]{40}(\\/[a-f0-9]{16})*", var.enforce_group_id)
    error_message = "enforce_group_id must be a valid group id"
  }
}

variable "google_project_id" {
  default     = ""
  type        = string
  description = "GCP Project ID. If not set, will default to provider default project id"
  sensitive   = false
  nullable    = false
}