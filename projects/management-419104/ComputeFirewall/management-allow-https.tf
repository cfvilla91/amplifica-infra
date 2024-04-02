resource "google_compute_firewall" "management_allow_https" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "management-allow-https"
  network       = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  priority      = 1000
  project       = "management-419104"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["https-server"]
}
# terraform import google_compute_firewall.management_allow_https projects/management-419104/global/firewalls/management-allow-https
