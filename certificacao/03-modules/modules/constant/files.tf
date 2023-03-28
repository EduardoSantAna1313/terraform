resource "local_file" "myfile" {
  filename = local.filename
  content  = local.content
}

locals {
  filename = "bla.txt"
  content  = "teste123"
}

output "name" {
  value = local_file.myfile.filename
}