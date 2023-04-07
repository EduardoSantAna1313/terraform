resource "local_file" "myfile" {
  ilename = var.filename
  content = file("./content.json")
}