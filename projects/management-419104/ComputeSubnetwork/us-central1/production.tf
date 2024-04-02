resource "google_compute_subnetwork" "production" {
  ip_cidr_range              = "10.0.0.0/16"
  name                       = "production"
  network                    = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "management-419104"
  purpose                    = "PRIVATE"
  region                     = "us-central1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.production projects/management-419104/regions/us-central1/subnetworks/production
