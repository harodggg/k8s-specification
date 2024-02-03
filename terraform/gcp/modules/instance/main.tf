terraform { 
    required_providers {
        google = { 
            source = "hashicorp/google"
            version = "4.15.0"
        }
    }
}

provider "google" {
    credentials = file("./starlit-cycle-388401-6d88dc72c895.json")
    project = "starlit-cycle-388401"
    region  = var.region
    zone    = var.zone
}

resource "google_compute_instance" "vm_instance" {
  count        = var.instance_num
  name         = "${var.name}-${count.index}"
  machine_type = "n2d-custom-4-8192"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      type  = "pd-ssd"
      size  = "30"
    }
  }
#  scratch_disk {
#    interface = "nvme"
#  }
  dynamic "scratch_disk" {
    for_each = range(var.nvme_num)
    content {
      interface = "NVME"
    }
  }
 

  metadata_startup_script = file("startup.sh")
  network_interface {
    # A default network is created for all GCP projects
    network = "default"
    access_config {
    }
  }
  dynamic "attached_disk" { 
    for_each = google_compute_disk.disk
    iterator  = disk
    content{
        source = disk.value.name
    }
}
}

resource "google_compute_disk" "disk" {
  count = var.disk_num
  name  = "${var.disk_name}-${count.index}"
  type  = var.disk_type
  zone  = var.zone
 
  size = var.disk_size
  physical_block_size_bytes = 4096
}

