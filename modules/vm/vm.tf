  resource "google_compute_instance" "vm_instance" {
  name         = var.vm_instance_name
  machine_type = var.vm_machine_type
  zone         = var.vm_zone

  boot_disk {
    initialize_params {
      image = var.vm_os_version
    }
  }

  network_interface {
    network             = var.vm_network_name
    subnetwork          = var.vm_subnet_name
    subnetwork_project  = var.project_id 
    access_config {}
  }
  service_account {
    email  = "proxy-sa-acc@epam-demo-325303.iam.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
  metadata_startup_script = file("${path.module}/pubsubjob.sh")
}
