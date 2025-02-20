resource "google_cloud_run_service" "my_service" {
    name        = var.service_name
    location    = var.region

    template {
        spec {
            containers {
                image = var.container_image
                ports {
                    container_port = 8080
                }
                resources {
                    limits = {
                        cpu     = "1000m"
                        memory  = "512Mi"
                    }
                }
            }
        }
    }

    traffic {
        percent         = 100
        latest_revision = true
    }
}

# IAM policy for public access
resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.my_service.location
  project     = google_cloud_run_service.my_service.project
  service     = google_cloud_run_service.my_service.name

  policy_data = jsonencode({
    bindings = [{
      role    = "roles/run.invoker"
      members = ["allUsers"]
    }]
  })
}