resource "google_compute_network" "management" {
  auto_create_subnetworks = false
  mtu                     = 1460
  name                    = "management"
  project                 = "management-419104"
  routing_mode            = "REGIONAL"
}
# terraform import google_compute_network.management projects/management-419104/global/networks/management
