resource "local_file" "myfile" {
  filename = var.filename
  content  = "bla"
}

output "filecontent" {
  value     = local_file.myfile.content
  sensitive = true
}

output "filename" {
  value     = local_file.myfile.filename
  sensitive = false
}