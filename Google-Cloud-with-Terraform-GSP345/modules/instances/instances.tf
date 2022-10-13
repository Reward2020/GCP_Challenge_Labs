resource "google_compute_instance" "tf-instance-1" {
  name         = var.instance_name1
  project      = var.project_id
  machine_type = var.instance_type
  region       = var.gcp_region
  zone         = var.gcp_region-var.gcp_region_b

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "terraform-vpc"
	subnetwork = "subnet-01"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }
  
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
allow_stopping_for_update = true

}
resource "google_compute_instance" "tf-instance-2" {
  name         = var.instance_name2
  machine_type = var.instance_type
  region       = var.gcp_region
  zone         = var.gcp_region-var.gcp_region_b

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
      labels = {
        my_label = "value"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network = "terraform-vpc"
	subnetwork = "subnet-02"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }
  
  metadata_startup_script = <<-EOT
        #!/bin/bash
    EOT
allow_stopping_for_update = true

}
resource "google_compute_instance" "tf-instance-3" {
  name         = "tf-instance-3"
  machine_type = "n1-standard-2"
  zone         = var.gcp_region-var.gcp_region_b
  allow_stopping_for_update = true

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
 network = "default"
  }
}