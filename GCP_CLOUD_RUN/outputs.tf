output "cloud_run_url" {
  description = "Endpoint Cloud Run"
  value       = google_cloud_run_service.my_service.status[0].url
}
