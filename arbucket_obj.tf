provider "google" {

  project     = "prj-0310-ap52130410ra-svc"

  region      = "europe-north1"

}
resource "google_storage_bucket" "aparnabucket" {

  name          = "arbucket0713"

  location      = "europe-north1"

  storage_class = "STANDARD"

  force_destroy = true

}
/*variable "my_files" {

  default = ["docs/file1.txt", "docs/file2.txt" , "docs/file3.txt"]

}
resource "google_storage_bucket_object" "content_folder" {

  count  = "${length(var.my_files)}"

  name   = "ap-folder1/${element(var.my_files, count.index)}"
  //content = "files uploaded"
  source = "${element(var.my_files, count.index)}"
  bucket = "${google_storage_bucket.aparnabucket.name}"

}*/
resource "google_storage_bucket_object" "object-1" {

  name   = "folder/file-1.txt"

  source = "/home/aparna_rani/storagebucket/file1.txt"

bucket = google_storage_bucket.aparnabucket.name

}

 

resource "google_storage_bucket_object" "object-2" {

  name   = "folder/file-2.txt"

  source = "/home/aparna_rani/storagebucket/file2.txt"

bucket = google_storage_bucket.aparnabucket.name

}

 

resource "google_storage_bucket_object" "object-3" {

  name   = "folder/file-3.txt"

  source = "/home/aparna_rani/storagebucket/file3.txt"

bucket = google_storage_bucket.aparnabucket.name

}


