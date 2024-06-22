terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "julians-cloud"
  region = "europe-central2"
  zone = "europe-central2-a"
}

resource "google_compute_network" "vpc_network" {
  name = "j-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "compute-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }

  tags = [var.instance_name]
}


