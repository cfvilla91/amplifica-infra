resource "google_compute_ha_vpn_gateway" "vpn" {
  name           = "vpn"
  network        = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
  project        = "management-419104"
  region         = "us-central1"
  vpn_interfaces = {}

  vpn_interfaces {
    id = 1
  }
}
# terraform import google_compute_ha_vpn_gateway.vpn projects/management-419104/regions/us-central1/vpnGateways/vpn
