variable "project_id" {
    description = "GCP Project ID"
    type        = string
}

variable "region" {
    description = "Region GCP"
    type        = string
    default     = "us-central1"
}

variable "zone" {
  description = "Zona GCP"
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "Tipe mesin VM"
  type        = string
  default     = "e2-micro"
}

variable "vm_name" {
  description = "Nama VM Instance"
  type        = string
  default     = "terraform-vm"
}

variable "image_family" {
  description = "OS Image Family"
  type        = string
  default     = "ubuntu-2204-lts"
}