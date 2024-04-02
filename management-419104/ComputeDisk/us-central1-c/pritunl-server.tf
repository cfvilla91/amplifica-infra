resource "google_compute_disk" "pritunl_server" {
  image                     = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20240319"
  name                      = "pritunl-server"
  physical_block_size_bytes = 4096
  project                   = "management-419104"
  size                      = 10
  type                      = "pd-balanced"
  zone                      = "us-central1-c"
}
# terraform import google_compute_disk.pritunl_server projects/management-419104/zones/us-central1-c/disks/pritunl-server
