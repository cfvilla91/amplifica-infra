resource "google_compute_firewall" "management_allow_http" {
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "management-allow-http"
  network       = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  priority      = 1000
  project       = "management-419104"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["http-server"]
}
# terraform import google_compute_firewall.management_allow_http projects/management-419104/global/firewalls/management-allow-http
