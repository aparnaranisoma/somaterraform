resource "local_file" "sample_res" {
    filename = "sample_args.txt"
    sensitive_content = "Terraform is idempotent"
    file_permission = "0700"
  
}
