resource "google_project_service" "compute_googleapis_com" {
  project = "63279503272"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 63279503272/compute.googleapis.com
