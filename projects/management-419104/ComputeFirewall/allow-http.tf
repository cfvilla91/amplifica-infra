resource "google_compute_firewall" "allow_http" {
  allow {
    ports    = ["80", "443"]
    protocol = "tcp"
  }

  direction   = "INGRESS"
  name        = "allow-http"
  network     = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  priority    = 1000
  project     = "management-419104"
  source_tags = ["allow-http"]
}
# terraform import google_compute_firewall.allow_http projects/management-419104/global/firewalls/allow-http
