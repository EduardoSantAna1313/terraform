resource "local_file" "first" {
  filename = var.firstname
  content  = ""
}

resource "local_file" "second" {
  filename = var.secondname
  content  = ""
}