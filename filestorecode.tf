resource "google_filestore_instance" "instance" {
  name     = "aparnafs"
  location = "europe-north1-a"
  tier     = "BASIC_HDD"

  file_shares {
    capacity_gb = 1024
    name        = "share1"
  }

  /*networks {
    network = "projects/prj-13052023-h-landing-zone-01/global/networks/vpc-shr-nprd-int-01"
    modes   = ["MODE_IPV4"]
  }*/
  networks {
    network = "projects/prj-13052023-h-landing-zone-01/global/networks/vpc-shr-nprd-int-01"
    modes   = ["MODE_IPV4"]
    connect_mode = "PRIVATE_SERVICE_ACCESS"
  }
}
