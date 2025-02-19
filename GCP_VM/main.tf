resource "google_compute_firewall" "default" {
  name    = "allow-http-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_instance" "vm_instance" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "projects/ubuntu-os-cloud/global/images/family/${var.image_family}"
    }
  }

  network_interface {
    network = "default"
    access_config {}  # Alokasikan public IP
  }

  metadata_startup_script = file("startup_script.sh")

  tags = ["http-server", "ssh-server"]
}
