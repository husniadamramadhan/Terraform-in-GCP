variable "project_id" {
    description = "ID GCP"
    type = string
}

variable "region" {
    description = "Region for Cloud Run"
    type = string
    default = "us-central1"
}

variable "service_name" {
    description = "Service Name"
    type = string
}

variable "container_image" {
    description = "Container Image"
    type = string
}