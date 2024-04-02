resource "google_compute_firewall" "allow_ping_prod" {
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
  }

  direction   = "INGRESS"
  name        = "allow-ping-prod"
  network     = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  priority    = 1000
  project     = "management-419104"
  source_tags = ["development", "production"]
}
# terraform import google_compute_firewall.allow_ping_prod projects/management-419104/global/firewalls/allow-ping-prod
