output "id" {
  description = "ID of the VM instance"
  value       = google_compute_instance.vm_instance.id
}

output "tags" {
  description = "Tags on the VM instance"
  value       = google_compute_instance.vm_instance.tags
}


output "machine_type" {
  description = "Machine Type of the VM instance"
  value       = google_compute_instance.vm_instance.machine_type
}


output "image" {
  description = "Image of the VM instance"
  value       = google_compute_instance.vm_instance.boot_disk[0].initialize_params[0].image
}


output "instance_id" {
  description = "Instance ID of the VM instance"
  value       = google_compute_instance.vm_instance.instance_id
}


output "nat_ip" {
  description = "Zone of the VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0].access_config[0].nat_ip
}


output "network_ip" {
  description = "Network IP of the VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0].network_ip
}


output "zone" {
  description = "Zone of the VM instance"
  value       = google_compute_instance.vm_instance.zone
}

