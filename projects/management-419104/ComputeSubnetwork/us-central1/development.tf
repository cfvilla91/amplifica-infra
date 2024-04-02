resource "google_compute_subnetwork" "development" {
  ip_cidr_range              = "10.1.0.0/16"
  name                       = "development"
  network                    = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "management-419104"
  purpose                    = "PRIVATE"
  region                     = "us-central1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.development projects/management-419104/regions/us-central1/subnetworks/development
