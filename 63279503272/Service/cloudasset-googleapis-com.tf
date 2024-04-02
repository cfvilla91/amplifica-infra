resource "google_project_service" "cloudasset_googleapis_com" {
  project = "63279503272"
  service = "cloudasset.googleapis.com"
}
# terraform import google_project_service.cloudasset_googleapis_com 63279503272/cloudasset.googleapis.com
