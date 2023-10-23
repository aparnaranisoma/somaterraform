resource "google_compute_instance" "default" {
  name         = "vminstance1"
  machine_type = "e2-medium"
  zone         = "europe-north1-a"

  boot_disk {
   initialize_params {
      image = "projects/kube-project-380713/global/images/centos-8-hardened-custom-os-image"
      
    }

  }

 network_interface {
    subnetwork = "projects/prj-13052023-h-landing-zone-01/regions/europe-north1/subnetworks/vpc-shr-nprd-int-01-sub-euno1-dev-app-01"
  }

attached_disk {
 source = google_compute_disk.aparnadisk.name     
 device_name = "aparna-datadisk"   
 }
}
resource "google_compute_disk" "aparnadisk" {
  name  = "aparnadisk"
  size = 20
  zone = "europe-north1-a"
  type  = "pd-ssd"
  
}


