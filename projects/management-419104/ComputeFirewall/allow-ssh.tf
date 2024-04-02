resource "google_compute_firewall" "allow_ssh" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "allow-ssh"
  network       = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  priority      = 1000
  project       = "management-419104"
  source_ranges = ["0.0.0.0/0"]
}
# terraform import google_compute_firewall.allow_ssh projects/management-419104/global/firewalls/allow-ssh
