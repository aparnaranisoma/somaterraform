resource "local_file" "cat_res" {
    filename = "cat.txt"
    content = "I love cat"
  
}
resource "local_file" "dog_res" {
    filename = "dog.txt"
    content = "I love dogs"
  
}
