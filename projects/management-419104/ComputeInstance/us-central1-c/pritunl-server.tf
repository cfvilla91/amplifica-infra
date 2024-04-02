resource "google_compute_instance" "pritunl_server" {
  boot_disk {
    auto_delete = true
    device_name = "pritunl-server"

    initialize_params {
      image = "https://www.googleapis.com/compute/beta/projects/ubuntu-os-cloud/global/images/ubuntu-2204-jammy-v20240319"
      size  = 10
      type  = "pd-balanced"
    }

    mode   = "READ_WRITE"
    source = "https://www.googleapis.com/compute/v1/projects/management-419104/zones/us-central1-c/disks/pritunl-server"
  }

  can_ip_forward = true

  confidential_instance_config {
    enable_confidential_compute = false
  }

  machine_type = "e2-micro"

  metadata = {
    ssh-keys = "yo:ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBB3Csa2iydDhrMfzeATUNQyVM8nYGCAmkJPYaRy4q2/trZhuKXoxYgmZnBKR7uC32jK++kTbTgQ5URi9n/CgP4g= google-ssh {\"userName\":\"yo@cfvilla.cl\",\"expireOn\":\"2024-04-02T05:36:23+0000\"}\nyo:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCtUzswaU6qpIAgh/DMhbYNh88l2NPUG4d0KXw1+Xdv6m+T7pEoC84vAgKviUzPMqupgNgwqJnEd8slp+8+Np7n4BGk14nm3dVjO3An3afgjV9vNFvIQWAE+xgvyuecUGwRlpc7ZRWb2+IFDD/WTN28/PTuWkaTh/Jq+xBJDfZNuO6ZJ3BAx2qQJlqNfONU3uORNS6y/P+jNYDH+LlqpuEMLFk2A1/t+qHs1EzMUr3F9bkpLg8VZF5/GLPjtcltyi4IKQFpDsdC4tDP6eAEtXLPhemhIHlck5LBAT2QueNc7r2MQu+gT+HyZiMeBq2eaqf8abdvq5YZ+kbr7iF36lzz google-ssh {\"userName\":\"yo@cfvilla.cl\",\"expireOn\":\"2024-04-02T05:36:41+0000\"}"
  }

  name = "pritunl-server"

  network_interface {
    access_config {
      nat_ip       = "34.122.15.120"
      network_tier = "PREMIUM"
    }

    network            = "https://www.googleapis.com/compute/v1/projects/management-419104/global/networks/management"
    network_ip         = "10.1.0.2"
    stack_type         = "IPV4_ONLY"
    subnetwork         = "https://www.googleapis.com/compute/v1/projects/management-419104/regions/us-central1/subnetworks/development"
    subnetwork_project = "management-419104"
  }

  project = "management-419104"

  reservation_affinity {
    type = "ANY_RESERVATION"
  }

  scheduling {
    automatic_restart   = false
    on_host_maintenance = "MIGRATE"
    provisioning_model  = "STANDARD"
  }

  service_account {
    email  = "63279503272-compute@developer.gserviceaccount.com"
    scopes = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring.write", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
  }

  shielded_instance_config {
    enable_integrity_monitoring = true
    enable_vtpm                 = true
  }

  tags = ["allow-http", "http-server", "https-server", "pritunl-access"]
  zone = "us-central1-c"
}
# terraform import google_compute_instance.pritunl_server projects/management-419104/zones/us-central1-c/instances/pritunl-server
