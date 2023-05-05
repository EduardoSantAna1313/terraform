locals {
  filename = format("%s%s.txt", var.file_name, formatdate("YYYYMMDD", timestamp()))
  content  = upper(file("./terraform.tfvars"))
}

resource "local_file" "file" {
  filename = local.filename
  content  = local.content
}