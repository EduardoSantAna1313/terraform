resource "local_file" "myfile" {
  filename = var.file_name
  content  = var.content
}

output "name" {
  value = local_file.myfile.filename
}