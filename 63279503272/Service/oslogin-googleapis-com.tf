resource "google_project_service" "oslogin_googleapis_com" {
  project = "63279503272"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 63279503272/oslogin.googleapis.com
