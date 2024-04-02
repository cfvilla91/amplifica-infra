resource "google_compute_address" "ip_vpn" {
  address      = "34.122.15.120"
  address_type = "EXTERNAL"
  name         = "ip-vpn"
  network_tier = "PREMIUM"
  project      = "management-419104"
  region       = "us-central1"
}
# terraform import google_compute_address.ip_vpn projects/management-419104/regions/us-central1/addresses/ip-vpn
